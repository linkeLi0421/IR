; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-at91-master.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-at91-master.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type {}
%struct.at91_twi_dev = type { ptr, ptr, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i32, %struct.i2c_adapter, i32, ptr, i8, i8, i8, i32, %struct.at91_twi_dma, i8, %struct.i2c_bus_recovery_info, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.at91_twi_dma = type { ptr, ptr, [2 x %struct.scatterlist], ptr, i32, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at91_twi_pdata = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = private unnamed_addr constant [23 x i8] c"Cannot get irq %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"atmel,fifo-size\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using FIFO (%u data)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"i2c-digital-filter\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"i2c-analog-filter\00", align 1
@at91_twi_algorithm = internal constant %struct.i2c_algorithm { ptr @at91_twi_xfer, ptr null, ptr null, ptr null, ptr @at91_twi_func, ptr null, ptr null }, align 4
@at91_twi_quirks = internal constant %struct.i2c_adapter_quirks { i64 11, i32 0, i16 0, i16 0, i16 3, i16 0 }, align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to configure tx channel\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to configure rx channel\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"can't get DMA channel, continue without DMA support\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"%d exceeds ckdiv max value which is %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"HOLD field set to its maximum value (%d instead of %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Filter threshold set to its maximum value (%d instead of %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"overrun while reading\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"underrun while writing\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"tx locked\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"invalid smbus block length recvd\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"dma map failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"dma prep slave sg failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_init_twi_bus_master(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 0, i32 noundef 268435456) #7
  br label %8

8:                                                ; preds = %7, %1
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 0, i32 noundef 4) #7
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 0, i32 noundef 32) #7
  %9 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 16, i32 noundef %10) #7
  %11 = getelementptr inbounds %struct.at91_twi_pdata, ptr %3, i32 0, i32 5
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 20
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ 0, %8 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.at91_twi_pdata, ptr %3, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 20
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 22
  %29 = load i32, ptr %28, align 8
  %30 = shl i32 %29, 8
  %31 = and i32 %30, 1792
  %32 = or i32 %31, 1
  br label %33

33:                                               ; preds = %27, %23, %18
  %34 = phi i32 [ %32, %27 ], [ %19, %23 ], [ %19, %18 ]
  %35 = getelementptr inbounds %struct.at91_twi_pdata, ptr %3, i32 0, i32 7
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 21
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = or i32 %34, 2
  br i1 %41, label %43, label %45

43:                                               ; preds = %38, %33
  %44 = icmp eq i32 %34, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43, %38
  %46 = phi i32 [ %34, %43 ], [ %42, %38 ]
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 68, i32 noundef %46) #7
  br label %47

47:                                               ; preds = %45, %43
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @at91_twi_probe_master(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.i2c_timings, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #7
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load ptr, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %16, %15 ], [ %13, %3 ]
  %19 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %10, ptr noundef nonnull @atmel_twi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef %2) #7
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %2, align 8
  br i1 %20, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %23, i32 noundef %19) #8
  br label %234

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %117, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #7
  %29 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 17
  %30 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false) #7
  %34 = add i32 %1, 48
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 1, ptr %37, align 4
  %38 = add i32 %1, 52
  %39 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  store i32 %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 1, ptr %41, align 4
  %42 = tail call ptr @dma_request_chan(ptr noundef %21, ptr noundef nonnull @.str.6) #7
  %43 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 17, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %95, label %45

45:                                               ; preds = %28
  %46 = load ptr, ptr %2, align 8
  %47 = tail call ptr @dma_request_chan(ptr noundef %46, ptr noundef nonnull @.str.7) #7
  store ptr %47, ptr %29, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %95, label %49

49:                                               ; preds = %45
  store i32 1, ptr %5, align 4
  %50 = load ptr, ptr %43, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 44
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  %56 = call i32 %53(ptr noundef %50, ptr noundef nonnull %5) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  store i32 2, ptr %5, align 4
  %59 = load ptr, ptr %29, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 44
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %100, label %64

64:                                               ; preds = %58
  %65 = call i32 %62(ptr noundef %59, ptr noundef nonnull %5) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 17, i32 2
  call void @sg_init_table(ptr noundef %68, i32 noundef 2) #7
  %69 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 17, i32 5
  store i8 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 17, i32 6
  store i8 0, ptr %70, align 1
  %71 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 13
  store i8 1, ptr %71, align 8
  %72 = load ptr, ptr %2, align 8
  %73 = load ptr, ptr %43, align 4
  %74 = getelementptr inbounds %struct.dma_chan, ptr %73, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_chan_dev, ptr %75, i32 0, i32 1, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.dma_chan_dev, ptr %75, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %67
  %83 = phi ptr [ %81, %79 ], [ %77, %67 ]
  %84 = load ptr, ptr %29, align 4
  %85 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dma_chan_dev, ptr %86, i32 0, i32 1, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.dma_chan_dev, ptr %86, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %82
  %94 = phi ptr [ %92, %90 ], [ %88, %82 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.10, ptr noundef %83, ptr noundef %94) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #7
  br label %117

95:                                               ; preds = %45, %28
  %96 = phi ptr [ %43, %28 ], [ %29, %45 ]
  %97 = phi ptr [ %42, %28 ], [ %47, %45 ]
  store ptr null, ptr %96, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = icmp eq ptr %97, inttoptr (i32 -517 to ptr)
  br i1 %99, label %106, label %103

100:                                              ; preds = %64, %58, %55, %49
  %101 = phi ptr [ @.str.8, %49 ], [ @.str.8, %55 ], [ @.str.9, %58 ], [ @.str.9, %64 ]
  %102 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull %101) #8
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i32 [ %98, %95 ], [ -22, %100 ]
  %105 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.11) #8
  br label %106

106:                                              ; preds = %103, %95
  %107 = phi i32 [ %104, %103 ], [ -517, %95 ]
  %108 = load ptr, ptr %29, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @dma_release_channel(ptr noundef nonnull %108) #7
  br label %111

111:                                              ; preds = %110, %106
  %112 = load ptr, ptr %43, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @dma_release_channel(ptr noundef nonnull %112) #7
  br label %115

115:                                              ; preds = %114, %111
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #7
  %116 = icmp eq i32 %107, -517
  br i1 %116, label %234, label %117

117:                                              ; preds = %115, %93, %24
  %118 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 16
  %121 = call i32 @of_property_read_variable_u32_array(ptr noundef %119, ptr noundef nonnull @.str.1, ptr noundef %120, i32 noundef 1, i32 noundef 0) #7
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load ptr, ptr %2, align 8
  %125 = load i32, ptr %120, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.2, i32 noundef %125) #8
  br label %126

126:                                              ; preds = %123, %117
  %127 = load ptr, ptr %118, align 8
  %128 = call ptr @of_find_property(ptr noundef %127, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %129 = icmp ne ptr %128, null
  %130 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 20
  %131 = zext i1 %129 to i8
  store i8 %131, ptr %130, align 4
  %132 = load ptr, ptr %118, align 8
  %133 = call ptr @of_find_property(ptr noundef %132, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %134 = icmp ne ptr %133, null
  %135 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 21
  %136 = zext i1 %134 to i8
  store i8 %136, ptr %135, align 1
  %137 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 12
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.at91_twi_pdata, ptr %138, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %138, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !9
  %142 = load ptr, ptr %2, align 8
  call void @i2c_parse_fw_timings(ptr noundef %142, ptr noundef nonnull %4, i1 noundef zeroext true) #7
  %143 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = call i32 @clk_get_rate(ptr noundef %144) #7
  %146 = load i32, ptr %4, align 4
  %147 = shl i32 %146, 1
  %148 = add i32 %145, -1
  %149 = add i32 %148, %147
  %150 = udiv i32 %149, %147
  %151 = sub i32 %150, %140
  %152 = call i32 @llvm.smax.i32(i32 %151, i32 0) #7
  %153 = lshr i32 %152, 8
  %154 = icmp ult i32 %152, 256
  %155 = call i32 @llvm.ctlz.i32(i32 %153, i1 false) #7, !range !10
  %156 = sub nuw nsw i32 32, %155
  %157 = select i1 %154, i32 0, i32 %156
  %158 = lshr i32 %152, %157
  %159 = icmp sgt i32 %157, %141
  br i1 %159, label %160, label %162

160:                                              ; preds = %126
  %161 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.12, i32 noundef %157, i32 noundef %141) #8
  br label %162

162:                                              ; preds = %160, %126
  %163 = phi i32 [ 255, %160 ], [ %158, %126 ]
  %164 = phi i32 [ %141, %160 ], [ %157, %126 ]
  %165 = getelementptr inbounds %struct.at91_twi_pdata, ptr %138, i32 0, i32 4
  %166 = load i8, ptr %165, align 2, !range !8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %182, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.i2c_timings, ptr %4, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = load ptr, ptr %143, align 8
  %172 = call i32 @clk_get_rate(ptr noundef %171) #7
  %173 = udiv i32 %172, 1000
  %174 = mul i32 %173, %170
  %175 = add i32 %174, 999999
  %176 = udiv i32 %175, 1000000
  %177 = call i32 @llvm.smax.i32(i32 %176, i32 3) #7
  %178 = add nsw i32 %177, -3
  %179 = icmp ugt i32 %177, 34
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.13, i32 noundef 31, i32 noundef %178) #8
  br label %182

182:                                              ; preds = %180, %168, %162
  %183 = phi i32 [ 31, %180 ], [ %178, %168 ], [ 0, %162 ]
  %184 = getelementptr inbounds %struct.at91_twi_pdata, ptr %138, i32 0, i32 6
  %185 = load i8, ptr %184, align 4, !range !8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.i2c_timings, ptr %4, i32 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr %143, align 8
  %191 = call i32 @clk_get_rate(ptr noundef %190) #7
  %192 = udiv i32 %191, 1000
  %193 = mul i32 %192, %189
  %194 = add i32 %193, 999999
  %195 = udiv i32 %194, 1000000
  %196 = icmp ugt i32 %194, 7999999
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %198, ptr noundef nonnull @.str.14, i32 noundef 7, i32 noundef %195) #8
  br label %199

199:                                              ; preds = %197, %187, %182
  %200 = phi i32 [ 7, %197 ], [ %195, %187 ], [ 0, %182 ]
  %201 = shl i32 %164, 16
  %202 = shl i32 %163, 8
  %203 = shl nuw nsw i32 %183, 24
  %204 = and i32 %203, 520093696
  %205 = or i32 %202, %163
  %206 = or i32 %205, %201
  %207 = or i32 %206, %204
  %208 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 11
  store i32 %207, ptr %208, align 8
  %209 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 22
  store i32 %200, ptr %209, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %210 = load ptr, ptr %137, align 4
  %211 = getelementptr inbounds %struct.at91_twi_pdata, ptr %210, i32 0, i32 8
  %212 = load i8, ptr %211, align 2, !range !8
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %199
  %215 = call ptr @devm_pinctrl_get(ptr noundef %8) #7
  %216 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 19, i32 10
  store ptr %215, ptr %216, align 4
  %217 = icmp eq ptr %215, null
  %218 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  %219 = or i1 %217, %218
  br i1 %219, label %224, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 19
  br label %228

222:                                              ; preds = %199
  %223 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 19
  store ptr @at91_twi_recover_bus_cmd, ptr %223, align 4
  br label %228

224:                                              ; preds = %214
  %225 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %225, ptr noundef nonnull @.str.15) #8
  %226 = load ptr, ptr %216, align 4
  %227 = icmp eq ptr %226, inttoptr (i32 -517 to ptr)
  br i1 %227, label %234, label %231

228:                                              ; preds = %222, %220
  %229 = phi ptr [ %221, %220 ], [ %223, %222 ]
  %230 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 10, i32 16
  store ptr %229, ptr %230, align 4
  br label %231

231:                                              ; preds = %228, %224
  %232 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 10, i32 2
  store ptr @at91_twi_algorithm, ptr %232, align 8
  %233 = getelementptr inbounds %struct.at91_twi_dev, ptr %2, i32 0, i32 10, i32 17
  store ptr @at91_twi_quirks, ptr %233, align 8
  br label %234

234:                                              ; preds = %231, %224, %115, %22
  %235 = phi i32 [ %19, %22 ], [ 0, %231 ], [ -517, %115 ], [ -517, %224 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_twi_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 32) #7
  %4 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 44) #7
  %5 = and i32 %4, %3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %103, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 5
  %12 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 15
  %15 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 6
  %16 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 14
  br label %17

17:                                               ; preds = %64, %10
  %18 = load i32, ptr %11, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 48) #7
  br label %64

22:                                               ; preds = %17
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 48
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #7, !srcloc !11
  %26 = load ptr, ptr %13, align 4
  store i8 %25, ptr %26, align 1
  %27 = load i32, ptr %11, align 8
  %28 = add i32 %27, -1
  store i32 %28, ptr %11, align 8
  %29 = load i8, ptr %14, align 2, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %22
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, 1024
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %54, label %37, !prof !12

37:                                               ; preds = %31
  %38 = load ptr, ptr %13, align 4
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, -33
  %41 = icmp ult i8 %40, -32
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = and i16 %34, -1025
  store i16 %43, ptr %33, align 2
  %44 = load ptr, ptr %13, align 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, ptr %11, align 8
  %48 = add i32 %47, %46
  store i32 %48, ptr %11, align 8
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, 1
  %51 = load ptr, ptr %15, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 2
  store i16 %50, ptr %52, align 4
  br label %54

53:                                               ; preds = %37
  store i8 1, ptr %14, align 2
  store i32 1, ptr %11, align 8
  br label %54

54:                                               ; preds = %53, %42, %31
  %55 = load i8, ptr %16, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, ptr %11, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 0, i32 noundef 2) #7
  br label %61

61:                                               ; preds = %60, %57, %54
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr i8, ptr %62, i32 1
  store ptr %63, ptr %13, align 4
  br label %64

64:                                               ; preds = %61, %22, %20
  %65 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 32) #7
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %17

68:                                               ; preds = %64, %7
  %69 = and i32 %5, 257
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  tail call void @at91_disable_twi_interrupts(ptr noundef %1) #7
  %72 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %72) #7
  br label %99

73:                                               ; preds = %68
  %74 = and i32 %5, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %83) #7, !srcloc !13
  %87 = load i32, ptr %77, align 8
  %88 = add i32 %87, -1
  store i32 %88, ptr %77, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 14
  %92 = load i8, ptr %91, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 0, i32 noundef 2) #7
  br label %95

95:                                               ; preds = %94, %90
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 40, i32 noundef 4) #7
  br label %96

96:                                               ; preds = %95, %80
  %97 = load ptr, ptr %81, align 4
  %98 = getelementptr i8, ptr %97, i32 1
  store ptr %98, ptr %81, align 4
  br label %99

99:                                               ; preds = %96, %76, %73, %71
  %100 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 9
  %101 = load i32, ptr %100, align 8
  %102 = or i32 %101, %3
  store i32 %102, ptr %100, align 8
  br label %103

103:                                              ; preds = %99, %2
  %104 = phi i32 [ 1, %99 ], [ 0, %2 ]
  ret i32 %104
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_twi_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_disable_twi_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_recover_bus_cmd(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @at91_twi_read(ptr noundef %3, i32 noundef 32) #7
  %5 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 8
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 14
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @at91_twi_read(ptr noundef %3, i32 noundef 64) #7
  %16 = and i32 %15, -65536
  tail call void @at91_twi_write(ptr noundef %3, i32 noundef 64, i32 noundef %16) #7
  br label %17

17:                                               ; preds = %14, %10
  tail call void @at91_twi_write(ptr noundef %3, i32 noundef 0, i32 noundef 32768) #7
  br label %18

18:                                               ; preds = %17, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %371, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 2
  br i1 %10, label %11, label %38

11:                                               ; preds = %9
  %12 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp eq i16 %14, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %31, %20 ]
  %22 = phi i32 [ 0, %17 ], [ %30, %20 ]
  %23 = xor i32 %21, -1
  %24 = add nsw i32 %15, %23
  %25 = getelementptr i8, ptr %19, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %21, 3
  %29 = shl i32 %27, %28
  %30 = or i32 %29, %22
  %31 = add nuw nsw i32 %21, 1
  %32 = icmp eq i32 %31, %15
  br i1 %32, label %33, label %20

33:                                               ; preds = %20
  %34 = shl nuw nsw i32 %15, 8
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi i32 [ 0, %11 ], [ %34, %33 ]
  %37 = phi i32 [ 0, %11 ], [ %30, %33 ]
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 12, i32 noundef %37) #7
  br label %38

38:                                               ; preds = %35, %9
  %39 = phi i32 [ %36, %35 ], [ 0, %9 ]
  %40 = phi ptr [ %12, %35 ], [ %1, %9 ]
  %41 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 14
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, 1
  %45 = icmp ne i16 %44, 0
  %46 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.at91_twi_pdata, ptr %47, i32 0, i32 3
  %49 = load i8, ptr %48, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 2
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, -1
  %55 = icmp ult i16 %54, 255
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 65536) #7
  %57 = load i16, ptr %52, align 4
  %58 = shl nuw nsw i16 %44, 8
  %59 = or i16 %57, %58
  %60 = zext i16 %59 to i32
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 64, i32 noundef %60) #7
  store i8 1, ptr %41, align 1
  br label %63

61:                                               ; preds = %51
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 131072) #7
  %62 = load i8, ptr %41, align 1, !range !8
  br label %63

63:                                               ; preds = %61, %56, %38
  %64 = phi i8 [ 1, %56 ], [ %62, %61 ], [ 0, %38 ]
  %65 = load i16, ptr %40, align 4
  %66 = zext i16 %65 to i32
  %67 = shl nuw i32 %66, 16
  %68 = or i32 %67, %39
  %69 = icmp eq i8 %64, 0
  %70 = select i1 %69, i1 %45, i1 false
  %71 = select i1 %70, i32 4096, i32 0
  %72 = or i32 %68, %71
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 4, i32 noundef %72) #7
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 2
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 5
  store i32 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 4
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 6
  store ptr %40, ptr %80, align 4
  %81 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 15
  store i8 0, ptr %81, align 2
  %82 = load ptr, ptr %46, align 4
  %83 = getelementptr inbounds %struct.at91_twi_pdata, ptr %82, i32 0, i32 2
  %84 = load i8, ptr %83, align 4, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds %struct.at91_twi_pdata, ptr %82, i32 0, i32 3
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 2
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 9
  store i32 0, ptr %90, align 8
  %91 = tail call i32 @at91_twi_read(ptr noundef %5, i32 noundef 32) #7
  %92 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 16
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %63
  %96 = tail call i32 @at91_twi_read(ptr noundef %5, i32 noundef 80) #7
  %97 = and i32 %96, -52
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 80, i32 noundef %97) #7
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 50331648) #7
  br label %98

98:                                               ; preds = %95, %63
  %99 = load i32, ptr %76, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 64) #7
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 36, i32 noundef 1) #7
  br label %316

102:                                              ; preds = %98
  %103 = load ptr, ptr %80, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 1
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %200, label %109

109:                                              ; preds = %102
  %110 = load i8, ptr %41, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = icmp ult i32 %99, 2
  %113 = select i1 %111, i1 %112, i1 false
  %114 = and i32 %106, 1024
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  %117 = select i1 %116, i32 3, i32 1
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef %117) #7
  %118 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 13
  %119 = load i8, ptr %118, align 8, !range !8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %199, label %121

121:                                              ; preds = %109
  %122 = load i32, ptr %76, align 8
  %123 = icmp ugt i32 %122, 8
  br i1 %123, label %124, label %199

124:                                              ; preds = %121
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 36, i32 noundef 256) #7
  %125 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17
  %126 = load ptr, ptr %125, align 4
  %127 = load i8, ptr %41, align 1, !range !8
  %128 = icmp eq i8 %127, 0
  %129 = load i32, ptr %76, align 8
  %130 = add i32 %129, -2
  %131 = select i1 %128, i32 %130, i32 %129
  %132 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 4
  store i32 2, ptr %132, align 4
  tail call void @at91_twi_irq_save(ptr noundef %5) #7
  %133 = load ptr, ptr %5, align 8
  %134 = load ptr, ptr %79, align 4
  %135 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %134) #7
  %136 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %137 = xor i1 %136, true
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %148, !prof !14

139:                                              ; preds = %124
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %140 = tail call ptr @dev_driver_string(ptr noundef %133) #7
  %141 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load ptr, ptr %133, align 4
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi ptr [ %145, %144 ], [ %142, %139 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %140, ptr noundef %147) #7
  br label %148

148:                                              ; preds = %146, %124
  br i1 %135, label %158, label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr @mem_map, align 4
  %151 = ptrtoint ptr %134 to i32
  %152 = add i32 %151, 1073741824
  %153 = lshr i32 %152, 12
  %154 = getelementptr %struct.page, ptr %150, i32 %153
  %155 = and i32 %151, 4095
  %156 = tail call i32 @dma_map_page_attrs(ptr noundef %133, ptr noundef %154, i32 noundef %155, i32 noundef %131, i32 noundef 2, i32 noundef 0) #7
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %149, %148
  %159 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.21) #8
  br label %316

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 5
  store i8 1, ptr %161, align 4
  tail call void @at91_twi_irq_restore(ptr noundef %5) #7
  %162 = load i32, ptr %92, align 4
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %131, 3
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = tail call i32 @at91_twi_read(ptr noundef %5, i32 noundef 80) #7
  %169 = and i32 %168, -49
  %170 = or i32 %169, 32
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 80, i32 noundef %170) #7
  br label %171

171:                                              ; preds = %167, %160
  %172 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2
  %173 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 4
  store i32 %131, ptr %173, align 4
  %174 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 3
  store i32 %156, ptr %174, align 4
  %175 = icmp eq ptr %126, null
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr %126, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.dma_device, ptr %177, i32 0, i32 39
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = tail call ptr %181(ptr noundef nonnull %126, ptr noundef %172, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183, %179, %176, %171
  %187 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.22) #8
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %5) #7
  br label %316

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %184, i32 0, i32 6
  store ptr @at91_twi_read_data_dma_callback, ptr %189, align 4
  %190 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %184, i32 0, i32 8
  store ptr %5, ptr %190, align 4
  %191 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 6
  store i8 1, ptr %191, align 1
  %192 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %184, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = tail call i32 %193(ptr noundef nonnull %184) #7
  %195 = load ptr, ptr %125, align 4
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dma_device, ptr %196, i32 0, i32 50
  %198 = load ptr, ptr %197, align 4
  tail call void %198(ptr noundef %195) #7
  br label %316

199:                                              ; preds = %121, %109
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 36, i32 noundef 259) #7
  br label %316

200:                                              ; preds = %102
  %201 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 13
  %202 = load i8, ptr %201, align 8, !range !8
  %203 = icmp ne i8 %202, 0
  %204 = icmp ugt i32 %99, 8
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %295

206:                                              ; preds = %200
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 36, i32 noundef 256) #7
  %207 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = load i32, ptr %76, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %316, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 4
  store i32 1, ptr %212, align 4
  tail call void @at91_twi_irq_save(ptr noundef %5) #7
  %213 = load ptr, ptr %5, align 8
  %214 = load ptr, ptr %79, align 4
  %215 = load i32, ptr %76, align 8
  %216 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %214) #7
  %217 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %218 = xor i1 %217, true
  %219 = select i1 %216, i1 %218, i1 false
  br i1 %219, label %220, label %229, !prof !14

220:                                              ; preds = %211
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %221 = tail call ptr @dev_driver_string(ptr noundef %213) #7
  %222 = getelementptr inbounds %struct.device, ptr %213, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load ptr, ptr %213, align 4
  br label %227

227:                                              ; preds = %225, %220
  %228 = phi ptr [ %226, %225 ], [ %223, %220 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %221, ptr noundef %228) #7
  br label %229

229:                                              ; preds = %227, %211
  br i1 %216, label %239, label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr @mem_map, align 4
  %232 = ptrtoint ptr %214 to i32
  %233 = add i32 %232, 1073741824
  %234 = lshr i32 %233, 12
  %235 = getelementptr %struct.page, ptr %231, i32 %234
  %236 = and i32 %232, 4095
  %237 = tail call i32 @dma_map_page_attrs(ptr noundef %213, ptr noundef %235, i32 noundef %236, i32 noundef %215, i32 noundef 1, i32 noundef 0) #7
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %241

239:                                              ; preds = %230, %229
  %240 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.21) #8
  br label %316

241:                                              ; preds = %230
  %242 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 5
  store i8 1, ptr %242, align 4
  tail call void @at91_twi_irq_restore(ptr noundef %5) #7
  %243 = load i32, ptr %92, align 4
  %244 = icmp eq i32 %243, 0
  %245 = load i32, ptr %76, align 8
  br i1 %244, label %266, label %246

246:                                              ; preds = %241
  %247 = and i32 %245, -4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 4
  store i32 %247, ptr %250, align 4
  %251 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 3
  store i32 %237, ptr %251, align 4
  br label %252

252:                                              ; preds = %249, %246
  %253 = phi i32 [ 1, %249 ], [ 0, %246 ]
  %254 = and i32 %245, 3
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %252
  %257 = add nuw nsw i32 %253, 1
  %258 = getelementptr %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 %253, i32 4
  store i32 %254, ptr %258, align 4
  %259 = add i32 %247, %237
  %260 = getelementptr %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 %253, i32 3
  store i32 %259, ptr %260, align 4
  br label %261

261:                                              ; preds = %256, %252
  %262 = phi i32 [ %257, %256 ], [ %253, %252 ]
  %263 = tail call i32 @at91_twi_read(ptr noundef %5, i32 noundef 80) #7
  %264 = and i32 %263, -4
  %265 = or i32 %264, 2
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 80, i32 noundef %265) #7
  br label %269

266:                                              ; preds = %241
  %267 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 4
  store i32 %245, ptr %267, align 4
  %268 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2, i32 0, i32 3
  store i32 %237, ptr %268, align 4
  br label %269

269:                                              ; preds = %266, %261
  %270 = phi i32 [ %262, %261 ], [ 1, %266 ]
  %271 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 2
  %272 = icmp eq ptr %208, null
  br i1 %272, label %283, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %208, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %283, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.dma_device, ptr %274, i32 0, i32 39
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = tail call ptr %278(ptr noundef nonnull %208, ptr noundef %271, i32 noundef %270, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %280, %276, %273, %269
  %284 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %284, ptr noundef nonnull @.str.22) #8
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %5) #7
  br label %316

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %281, i32 0, i32 6
  store ptr @at91_twi_write_data_dma_callback, ptr %286, align 4
  %287 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %281, i32 0, i32 8
  store ptr %5, ptr %287, align 4
  %288 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 17, i32 6
  store i8 1, ptr %288, align 1
  %289 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %281, i32 0, i32 4
  %290 = load ptr, ptr %289, align 4
  %291 = tail call i32 %290(ptr noundef nonnull %281) #7
  %292 = load ptr, ptr %208, align 4
  %293 = getelementptr inbounds %struct.dma_device, ptr %292, i32 0, i32 50
  %294 = load ptr, ptr %293, align 4
  tail call void %294(ptr noundef nonnull %208) #7
  br label %316

295:                                              ; preds = %200
  %296 = load ptr, ptr %79, align 4
  %297 = load i8, ptr %296, align 1
  %298 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr i8, ptr %299, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %300, i8 %297) #7, !srcloc !13
  %301 = load i32, ptr %76, align 8
  %302 = add i32 %301, -1
  store i32 %302, ptr %76, align 8
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %295
  %305 = load i8, ptr %41, align 1, !range !8
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 2) #7
  br label %308

308:                                              ; preds = %307, %304
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 40, i32 noundef 4) #7
  %309 = load i32, ptr %76, align 8
  br label %310

310:                                              ; preds = %308, %295
  %311 = phi i32 [ %302, %295 ], [ %309, %308 ]
  %312 = load ptr, ptr %79, align 4
  %313 = getelementptr i8, ptr %312, i32 1
  store ptr %313, ptr %79, align 4
  %314 = icmp eq i32 %311, 0
  %315 = select i1 %314, i32 257, i32 261
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 36, i32 noundef %315) #7
  br label %316

316:                                              ; preds = %310, %285, %283, %239, %206, %199, %188, %186, %158, %101
  %317 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 10
  %318 = getelementptr inbounds %struct.at91_twi_dev, ptr %5, i32 0, i32 10, i32 7
  %319 = load i32, ptr %318, align 4
  %320 = tail call i32 @wait_for_completion_timeout(ptr noundef %89, i32 noundef %319) #7
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = tail call i32 @at91_twi_read(ptr noundef %5, i32 noundef 32) #7
  %324 = load i32, ptr %90, align 8
  %325 = or i32 %324, %323
  store i32 %325, ptr %90, align 8
  %326 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %326, ptr noundef nonnull @.str.16) #8
  tail call void @at91_init_twi_bus(ptr noundef %5) #7
  br label %359

327:                                              ; preds = %316
  %328 = load i32, ptr %90, align 8
  %329 = and i32 %328, 256
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %359

331:                                              ; preds = %327
  %332 = and i32 %328, 64
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.17) #8
  br label %359

336:                                              ; preds = %331
  %337 = and i32 %328, 128
  %338 = icmp eq i32 %337, 0
  %339 = select i1 %85, i1 true, i1 %338
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %341, ptr noundef nonnull @.str.18) #8
  br label %359

342:                                              ; preds = %336
  br i1 %88, label %343, label %349

343:                                              ; preds = %342
  %344 = load i32, ptr %92, align 4
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %328, 8388608
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %345, i1 true, i1 %347
  br i1 %348, label %354, label %352

349:                                              ; preds = %342
  %350 = and i32 %328, 8388608
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %349, %343
  %353 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.19) #8
  br label %359

354:                                              ; preds = %349, %343
  %355 = load i8, ptr %81, align 2, !range !8
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %371, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %358, ptr noundef nonnull @.str.20) #8
  br label %359

359:                                              ; preds = %357, %352, %340, %334, %327, %322
  %360 = phi i32 [ -110, %322 ], [ -5, %334 ], [ -5, %340 ], [ -5, %352 ], [ -71, %357 ], [ -121, %327 ]
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %5) #7
  br i1 %88, label %361, label %364

361:                                              ; preds = %359
  %362 = load i32, ptr %92, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %361, %359
  %365 = load i32, ptr %90, align 8
  %366 = and i32 %365, 8388608
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  tail call void @at91_twi_write(ptr noundef %5, i32 noundef 0, i32 noundef 83886080) #7
  br label %369

369:                                              ; preds = %368, %364, %361
  %370 = tail call i32 @i2c_recover_bus(ptr noundef %317) #7
  br label %371

371:                                              ; preds = %369, %354, %3
  %372 = phi i32 [ %7, %3 ], [ %360, %369 ], [ %2, %354 ]
  %373 = load ptr, ptr %5, align 8
  %374 = tail call i64 @ktime_get_mono_fast_ns() #7
  %375 = getelementptr inbounds %struct.device, ptr %373, i32 0, i32 11, i32 22
  store volatile i64 %374, ptr %375, align 8
  %376 = load ptr, ptr %5, align 8
  %377 = tail call i32 @__pm_runtime_suspend(ptr noundef %376, i32 noundef 13) #7
  ret i32 %372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @at91_twi_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 268369929
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_init_twi_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_twi_dma_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17
  tail call void @at91_twi_irq_save(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 6
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %11) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 48
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  tail call void %22(ptr noundef %11) #7
  br label %41

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 47
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = tail call i32 %30(ptr noundef %27) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 48
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void %38(ptr noundef %27) #7
  br label %41

41:                                               ; preds = %40, %35, %32, %25, %24, %19, %16, %10
  store i8 0, ptr %3, align 1
  br label %42

42:                                               ; preds = %41, %1
  %43 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 5
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 2, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 4
  %53 = load i32, ptr %52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef 0) #7
  store i8 0, ptr %43, align 4
  br label %54

54:                                               ; preds = %46, %42
  tail call void @at91_twi_irq_restore(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_irq_save(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_irq_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_twi_read_data_dma_callback(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef 2, i32 noundef 0) #7
  %7 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 8
  %12 = add i32 %11, -2
  %13 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  store ptr %15, ptr %13, align 4
  store i32 2, ptr %5, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ 1, %1 ], [ 3, %10 ]
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 36, i32 noundef %17) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_twi_write_data_dma_callback(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 17, i32 2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef 1, i32 noundef 0) #7
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 36, i32 noundef 1) #7
  %7 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @at91_twi_write(ptr noundef %0, i32 noundef 0, i32 noundef 2) #7
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i32 0, i32 33}
!11 = !{i64 5009897}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 5009502}
!14 = !{!"branch_weights", i32 1, i32 2000}
