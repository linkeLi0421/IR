; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-stm32.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.stm32_i2c_dma = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't request DMA tx channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't configure tx channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can't request DMA rx channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't configure rx channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DMA mapping failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stm32_i2c_dma_request(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false), !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 44, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull @.str) #5
  store ptr %9, ptr %6, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = icmp eq ptr %9, inttoptr (i32 -19 to ptr)
  br i1 %12, label %82, label %13

13:                                               ; preds = %11
  %14 = ptrtoint ptr %9 to i32
  %15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @.str.1) #5
  br label %82

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %17, i8 0, i32 44, i1 false)
  %18 = add i32 %2, %1
  %19 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 1, ptr %21, align 4
  store i32 1, ptr %5, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 44
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = call i32 %24(ptr noundef %9, ptr noundef nonnull %5) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %16
  %30 = phi i32 [ %27, %26 ], [ -38, %16 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  br label %80

31:                                               ; preds = %26
  %32 = call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %33 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %6, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = icmp eq ptr %32, inttoptr (i32 -19 to ptr)
  br i1 %36, label %80, label %37

37:                                               ; preds = %35
  %38 = ptrtoint ptr %32 to i32
  %39 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %38, ptr noundef nonnull @.str.4) #5
  br label %80

40:                                               ; preds = %31
  %41 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %41, i8 0, i32 40, i1 false)
  %42 = add i32 %3, %1
  %43 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 1, ptr %45, align 4
  store i32 2, ptr %5, align 4
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = call i32 %48(ptr noundef %32, ptr noundef nonnull %5) #5
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %40
  %54 = phi i32 [ %51, %50 ], [ -38, %40 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  call void @dma_release_channel(ptr noundef %32) #5
  br label %80

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %6, i32 0, i32 7
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %6, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %57, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #5
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.dma_chan, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dma_chan_dev, ptr %60, i32 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.dma_chan_dev, ptr %60, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %55
  %68 = phi ptr [ %66, %64 ], [ %62, %55 ]
  %69 = load ptr, ptr %33, align 4
  %70 = getelementptr inbounds %struct.dma_chan, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_chan_dev, ptr %71, i32 0, i32 1, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.dma_chan_dev, ptr %71, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %67
  %79 = phi ptr [ %77, %75 ], [ %73, %67 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %68, ptr noundef %79) #6
  br label %85

80:                                               ; preds = %53, %37, %35, %29
  %81 = phi i32 [ %30, %29 ], [ %39, %37 ], [ -19, %35 ], [ %54, %53 ]
  call void @dma_release_channel(ptr noundef %9) #5
  br label %82

82:                                               ; preds = %80, %13, %11
  %83 = phi i32 [ %15, %13 ], [ -19, %11 ], [ %81, %80 ]
  call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %6) #5
  %84 = inttoptr i32 %83 to ptr
  br label %85

85:                                               ; preds = %82, %78, %4
  %86 = phi ptr [ %84, %82 ], [ %6, %78 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #5
  ret ptr %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stm32_i2c_dma_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %0, i32 0, i32 4
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  tail call void @dma_release_channel(ptr noundef %4) #5
  store ptr null, ptr %0, align 4
  %5 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @dma_release_channel(ptr noundef %6) #5
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %0, i32 0, i32 2
  store ptr null, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_i2c_prep_dma_xfer(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.scatterlist, align 4
  %9 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 1
  %10 = select i1 %2, ptr %9, ptr %1
  %11 = select i1 %2, i32 2, i32 1
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 5
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 6
  store i32 %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 4
  store i32 %3, ptr %16, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %4) #5
  %21 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %33, !prof !9

24:                                               ; preds = %7
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %25 = tail call ptr @dev_driver_string(ptr noundef %19) #5
  %26 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load ptr, ptr %19, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %30, %29 ], [ %27, %24 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %25, ptr noundef %32) #5
  br label %33

33:                                               ; preds = %31, %7
  br i1 %20, label %34, label %36

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 3
  store i32 -1, ptr %35, align 4
  br label %46

36:                                               ; preds = %33
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %4 to i32
  %39 = add i32 %38, 1073741824
  %40 = lshr i32 %39, 12
  %41 = getelementptr %struct.page, ptr %37, i32 %40
  %42 = and i32 %38, 4095
  %43 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %41, i32 noundef %42, i32 noundef %3, i32 noundef %11, i32 noundef 0) #5
  %44 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = icmp eq i32 %43, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #6
  br label %84

47:                                               ; preds = %36
  %48 = load ptr, ptr %13, align 4
  %49 = load i32, ptr %16, align 4
  %50 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #5, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %8, i32 noundef 1) #5
  %51 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  store i32 %43, ptr %51, align 4
  %52 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 4
  store i32 %49, ptr %52, align 4
  %53 = icmp eq ptr %48, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %48, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 39
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54, %47
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #5
  br label %78

62:                                               ; preds = %57
  %63 = call ptr %59(ptr noundef nonnull %48, ptr noundef nonnull %8, i32 noundef 1, i32 noundef %50, i32 noundef 1, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 7
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 6
  store ptr %5, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 8
  store ptr %6, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef nonnull %63) #5
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load ptr, ptr %13, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 50
  %77 = load ptr, ptr %76, align 4
  call void %77(ptr noundef %74) #5
  br label %84

78:                                               ; preds = %65, %62, %61
  %79 = phi ptr [ @.str.8, %61 ], [ @.str.8, %62 ], [ @.str.9, %65 ]
  %80 = phi i32 [ -22, %61 ], [ -22, %62 ], [ %71, %65 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %79) #6
  %81 = load i32, ptr %44, align 4
  %82 = load i32, ptr %16, align 4
  %83 = load i32, ptr %15, align 4
  call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef 0) #5
  br label %84

84:                                               ; preds = %78, %73, %46
  %85 = phi i32 [ -22, %46 ], [ %80, %78 ], [ 0, %73 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
