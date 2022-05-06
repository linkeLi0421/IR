; ModuleID = '/llk/IR/drivers/mfd/stm32-timers.c_pt.bc'
source_filename = "../drivers/mfd/stm32-timers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_timers_dma_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_timers_dma_burst_read\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_timers_dma_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@stm32_timers_dier_dmaen = internal unnamed_addr constant [7 x i32] [i32 512, i32 1024, i32 2048, i32 4096, i32 1, i32 16384, i32 8192], align 4
@__kstrtab_stm32_timers_dma_burst_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_timers_dma_burst_read = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_timers_dma_burst_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_timers_dma_burst_read to i32), ptr @__kstrtab_stm32_timers_dma_burst_read, ptr @__kstrtabns_stm32_timers_dma_burst_read }, section "___ksymtab_gpl+stm32_timers_dma_burst_read", align 4
@stm32_timers_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description233 = internal constant [44 x i8] c"description=STMicroelectronics STM32 Timers\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@stm32_timers_driver = internal global %struct.platform_driver { ptr @stm32_timers_probe, ptr @stm32_timers_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_timers_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [13 x i8] c"stm32-timers\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@stm32_timers_regmap_cfg = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32_timers_dma_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"&ddata->dma.lock\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ch%1d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"trig\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_stm32_timers_dma_burst_read], section "llvm.metadata"

@__mod_of__stm32_timers_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_timers_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_timers_dma_burst_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca %struct.dma_slave_config, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #7
  %13 = getelementptr inbounds %struct.stm32_timers, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_timers, ptr %11, i32 0, i32 3
  %16 = shl i32 %4, 2
  %17 = mul i32 %16, %5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false), !annotation !8
  %18 = icmp ugt i32 %2, 6
  br i1 %18, label %141, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %4, 0
  %21 = icmp eq i32 %5, 0
  %22 = or i1 %20, %21
  %23 = icmp ugt i32 %3, 1020
  %24 = or i1 %23, %22
  %25 = add i32 %16, %3
  %26 = icmp ugt i32 %25, 1020
  %27 = or i1 %26, %24
  br i1 %27, label %141, label %28

28:                                               ; preds = %19
  %29 = getelementptr %struct.stm32_timers, ptr %11, i32 0, i32 3, i32 4, i32 %2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %141, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stm32_timers, ptr %11, i32 0, i32 3, i32 2
  tail call void @mutex_lock(ptr noundef %33) #7
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.stm32_timers, ptr %11, i32 0, i32 3, i32 3
  store ptr %34, ptr %35, align 4
  %36 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #7
  %37 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %49, !prof !9

40:                                               ; preds = %32
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %41 = tail call ptr @dev_driver_string(ptr noundef %0) #7
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ %43, %40 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %41, ptr noundef %48) #7
  br label %49

49:                                               ; preds = %47, %32
  br i1 %36, label %139, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %1 to i32
  %53 = add i32 %52, 1073741824
  %54 = lshr i32 %53, 12
  %55 = getelementptr %struct.page, ptr %51, i32 %54
  %56 = and i32 %52, 4095
  %57 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %55, i32 noundef %56, i32 noundef %17, i32 noundef 2, i32 noundef 0) #7
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %139, label %59

59:                                               ; preds = %50
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false)
  %60 = getelementptr inbounds %struct.stm32_timers, ptr %11, i32 0, i32 3, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 76
  %63 = getelementptr inbounds %struct.dma_slave_config, ptr %9, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, ptr %9, i32 0, i32 3
  store i32 4, ptr %64, align 4
  %65 = load ptr, ptr %35, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 44
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %137, label %70

70:                                               ; preds = %59
  %71 = call i32 %68(ptr noundef %65, ptr noundef nonnull %9) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %70
  %74 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #7, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %8, i32 noundef 1) #7
  %75 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  store i32 %57, ptr %75, align 4
  %76 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 4
  store i32 %17, ptr %76, align 4
  %77 = icmp eq ptr %74, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %74, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.dma_device, ptr %79, i32 0, i32 39
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78, %73
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #7
  br label %137

86:                                               ; preds = %81
  %87 = call ptr %83(ptr noundef nonnull %74, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %137, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %87, i32 0, i32 6
  store ptr @stm32_timers_dma_done, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %87, i32 0, i32 8
  store ptr %15, ptr %91, align 4
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %87, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef nonnull %87) #7
  %95 = call i32 @llvm.smin.i32(i32 %94, i32 0) #7
  %96 = icmp sgt i32 %94, -1
  br i1 %96, label %97, label %128

97:                                               ; preds = %89
  store i32 0, ptr %15, align 4
  %98 = load ptr, ptr %35, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dma_device, ptr %99, i32 0, i32 50
  %101 = load ptr, ptr %100, align 4
  call void %101(ptr noundef %98) #7
  %102 = lshr i32 %3, 2
  %103 = shl i32 %5, 8
  %104 = add i32 %103, 7936
  %105 = and i32 %104, 7936
  %106 = and i32 %102, 31
  %107 = or i32 %105, %106
  %108 = call i32 @regmap_write(ptr noundef %14, i32 noundef 72, i32 noundef %107) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %97
  %111 = call i32 @regmap_write(ptr noundef %14, i32 noundef 16, i32 noundef 0) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = getelementptr [7 x i32], ptr @stm32_timers_dier_dmaen, i32 0, i32 %2
  %115 = load i32, ptr %114, align 4
  %116 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef %115, i32 noundef %115, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %15, i32 noundef %12) #7
  %120 = icmp eq i32 %119, 0
  %121 = call i32 @llvm.smin.i32(i32 %119, i32 0)
  %122 = select i1 %120, i32 -110, i32 %121
  %123 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef %115, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %124 = call i32 @regmap_write(ptr noundef %14, i32 noundef 16, i32 noundef 0) #7
  br label %125

125:                                              ; preds = %118, %113, %110
  %126 = phi i32 [ %111, %110 ], [ %116, %113 ], [ %122, %118 ]
  %127 = call i32 @regmap_write(ptr noundef %14, i32 noundef 72, i32 noundef 0) #7
  br label %128

128:                                              ; preds = %125, %97, %89
  %129 = phi i32 [ %95, %89 ], [ %108, %97 ], [ %126, %125 ]
  %130 = load ptr, ptr %35, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 47
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %128
  %136 = call i32 %133(ptr noundef %130) #7
  br label %137

137:                                              ; preds = %135, %128, %86, %85, %70, %59
  %138 = phi i32 [ %71, %70 ], [ -16, %86 ], [ -16, %85 ], [ %129, %128 ], [ %129, %135 ], [ -38, %59 ]
  call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %57, i32 noundef %17, i32 noundef 2, i32 noundef 0) #7
  br label %139

139:                                              ; preds = %137, %50, %49
  %140 = phi i32 [ %138, %137 ], [ -12, %50 ], [ -12, %49 ]
  store ptr null, ptr %35, align 4
  call void @mutex_unlock(ptr noundef %33) #7
  br label %141

141:                                              ; preds = %139, %28, %19, %7
  %142 = phi i32 [ %140, %139 ], [ -22, %7 ], [ -22, %19 ], [ -19, %28 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #7
  ret i32 %142
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_timers_dma_done(ptr noundef %0) #0 {
  %2 = alloca %struct.dma_tx_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.stm32_timers_dma, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @complete(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timers_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timers_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timers_probe(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 84, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %131, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %8) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %131

13:                                               ; preds = %7
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 1
  store i32 %14, ptr %15, align 4
  %16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %9, ptr noundef nonnull @stm32_timers_regmap_cfg, ptr noundef null, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = ptrtoint ptr %16 to i32
  br label %131

21:                                               ; preds = %13
  %22 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #7
  store ptr %22, ptr %5, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %131

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %27 = call i32 @regmap_read(ptr noundef %16, i32 noundef 44, ptr noundef nonnull %3) #7
  %28 = call i32 @regmap_write(ptr noundef %16, i32 noundef 44, i32 noundef -1) #7
  %29 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 2
  %30 = call i32 @regmap_read(ptr noundef %16, i32 noundef 44, ptr noundef %29) #7
  %31 = load ptr, ptr %17, align 4
  %32 = load i32, ptr %3, align 4
  %33 = call i32 @regmap_write(ptr noundef %31, i32 noundef 44, i32 noundef %32) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 3
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #7
  %36 = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 2
  call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @stm32_timers_dma_probe.__key) #7
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %38 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull %2) #7
  %39 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 0
  store ptr %38, ptr %39, align 4
  %40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 2) #7
  %41 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull %2) #7
  %42 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 1
  store ptr %41, ptr %42, align 4
  %43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 3) #7
  %44 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull %2) #7
  %45 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 2
  store ptr %44, ptr %45, align 4
  %46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 4) #7
  %47 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull %2) #7
  %48 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 3
  store ptr %47, ptr %48, align 4
  %49 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  %50 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 4
  store ptr %49, ptr %50, align 4
  %51 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.7) #7
  %52 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 5
  store ptr %51, ptr %52, align 4
  %53 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  %54 = getelementptr %struct.stm32_timers, ptr %5, i32 0, i32 3, i32 4, i32 6
  store ptr %53, ptr %54, align 4
  %55 = load ptr, ptr %39, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %26
  %58 = ptrtoint ptr %55 to i32
  %59 = icmp eq ptr %55, inttoptr (i32 -19 to ptr)
  %60 = select i1 %59, i32 0, i32 %58
  store ptr null, ptr %39, align 4
  br label %61

61:                                               ; preds = %57, %26
  %62 = phi i32 [ %60, %57 ], [ 0, %26 ]
  %63 = load ptr, ptr %42, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = ptrtoint ptr %63 to i32
  %67 = icmp eq ptr %63, inttoptr (i32 -19 to ptr)
  %68 = icmp ne i32 %62, 0
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, i32 %62, i32 %66
  store ptr null, ptr %42, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i32 [ %70, %65 ], [ %62, %61 ]
  %73 = load ptr, ptr %45, align 4
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = ptrtoint ptr %73 to i32
  %77 = icmp eq ptr %73, inttoptr (i32 -19 to ptr)
  %78 = icmp ne i32 %72, 0
  %79 = select i1 %77, i1 true, i1 %78
  %80 = select i1 %79, i32 %72, i32 %76
  store ptr null, ptr %45, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i32 [ %80, %75 ], [ %72, %71 ]
  %83 = load ptr, ptr %48, align 4
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = ptrtoint ptr %83 to i32
  %87 = icmp eq ptr %83, inttoptr (i32 -19 to ptr)
  %88 = icmp ne i32 %82, 0
  %89 = select i1 %87, i1 true, i1 %88
  %90 = select i1 %89, i32 %82, i32 %86
  store ptr null, ptr %48, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = phi i32 [ %90, %85 ], [ %82, %81 ]
  %93 = load ptr, ptr %50, align 4
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = ptrtoint ptr %93 to i32
  %97 = icmp eq ptr %93, inttoptr (i32 -19 to ptr)
  %98 = icmp ne i32 %92, 0
  %99 = select i1 %97, i1 true, i1 %98
  %100 = select i1 %99, i32 %92, i32 %96
  store ptr null, ptr %50, align 4
  br label %101

101:                                              ; preds = %95, %91
  %102 = phi i32 [ %100, %95 ], [ %92, %91 ]
  %103 = load ptr, ptr %52, align 4
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = ptrtoint ptr %103 to i32
  %107 = icmp eq ptr %103, inttoptr (i32 -19 to ptr)
  %108 = icmp ne i32 %102, 0
  %109 = select i1 %107, i1 true, i1 %108
  %110 = select i1 %109, i32 %102, i32 %106
  store ptr null, ptr %52, align 4
  br label %111

111:                                              ; preds = %105, %101
  %112 = phi i32 [ %110, %105 ], [ %102, %101 ]
  %113 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = ptrtoint ptr %53 to i32
  %116 = icmp eq ptr %53, inttoptr (i32 -19 to ptr)
  %117 = icmp ne i32 %112, 0
  %118 = select i1 %116, i1 true, i1 %117
  %119 = select i1 %118, i32 %112, i32 %115
  store ptr null, ptr %54, align 4
  br label %120

120:                                              ; preds = %114, %111
  %121 = phi i32 [ %119, %114 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call fastcc void @stm32_timers_dma_remove(ptr noundef nonnull %5)
  br label %131

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %125, align 8
  %126 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %127 = load ptr, ptr %126, align 8
  %128 = call i32 @of_platform_populate(ptr noundef %127, ptr noundef null, ptr noundef null, ptr noundef %4) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  call fastcc void @stm32_timers_dma_remove(ptr noundef nonnull %5)
  br label %131

131:                                              ; preds = %130, %124, %123, %24, %19, %11, %1
  %132 = phi i32 [ %12, %11 ], [ %20, %19 ], [ %25, %24 ], [ %121, %123 ], [ -12, %1 ], [ %128, %130 ], [ 0, %124 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timers_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %4) #7
  tail call fastcc void @stm32_timers_dma_remove(ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_timers_dma_remove(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dma_release_channel(ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dma_release_channel(ptr noundef nonnull %13) #7
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dma_release_channel(ptr noundef nonnull %18) #7
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @dma_release_channel(ptr noundef nonnull %23) #7
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @dma_release_channel(ptr noundef nonnull %28) #7
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr %struct.stm32_timers, ptr %0, i32 0, i32 3, i32 4, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @dma_release_channel(ptr noundef nonnull %33) #7
  br label %36

36:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
