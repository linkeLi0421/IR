; ModuleID = '/llk/IR/drivers/memory/stm32-fmc2-ebi.c_pt.bc'
source_filename = "../drivers/memory/stm32-fmc2-ebi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_fmc2_prop = type { ptr, i8, i8, i32, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_fmc2_ebi = type { ptr, ptr, ptr, i8, [4 x i32], [4 x i32], [4 x i32], i32 }

@__initcall__kmod_stm32_fmc2_ebi__452_1205_stm32_fmc2_ebi_driver_init6 = internal global ptr @stm32_fmc2_ebi_driver_init, section ".initcall6.init", align 4
@stm32_fmc2_ebi_driver = internal global %struct.platform_driver { ptr @stm32_fmc2_ebi_probe, ptr @stm32_fmc2_ebi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_fmc2_ebi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_fmc2_ebi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_fmc2_ebi_driver_exit = internal global ptr @stm32_fmc2_ebi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias453 = internal constant [45 x i8] c"stm32_fmc2_ebi.alias=platform:stm32_fmc2_ebi\00", section ".modinfo", align 1
@__UNIQUE_ID_author454 = internal constant [69 x i8] c"stm32_fmc2_ebi.author=Christophe Kerello <christophe.kerello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description455 = internal constant [68 x i8] c"stm32_fmc2_ebi.description=STMicroelectronics STM32 FMC2 ebi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file456 = internal constant [50 x i8] c"stm32_fmc2_ebi.file=drivers/memory/stm32-fmc2-ebi\00", section ".modinfo", align 1
@__UNIQUE_ID_license457 = internal constant [30 x i8] c"stm32_fmc2_ebi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"stm32_fmc2_ebi\00", align 1
@stm32_fmc2_ebi_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-fmc2-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_fmc2_ebi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid reg value: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bank already assigned: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"setup chip select %d failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"no subnodes found, disable the driver.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"NWAIT signal connected to EBI and NAND controllers\0A\00", align 1
@stm32_fmc2_child_props = internal constant [23 x %struct.stm32_fmc2_prop] [%struct.stm32_fmc2_prop { ptr @.str.9, i8 0, i8 1, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_trans_type }, %struct.stm32_fmc2_prop { ptr @.str.10, i8 1, i8 0, i32 1, i32 1048576, i32 0, ptr @stm32_fmc2_ebi_check_cclk, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.11, i8 1, i8 0, i32 1, i32 2, i32 0, ptr @stm32_fmc2_ebi_check_mux, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.12, i8 0, i8 0, i32 0, i32 0, i32 16, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_buswidth }, %struct.stm32_fmc2_prop { ptr @.str.13, i8 1, i8 0, i32 1, i32 512, i32 0, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.14, i8 1, i8 0, i32 1, i32 2048, i32 0, ptr @stm32_fmc2_ebi_check_waitcfg, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.15, i8 1, i8 0, i32 1, i32 8192, i32 0, ptr @stm32_fmc2_ebi_check_sync_trans, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.16, i8 1, i8 0, i32 1, i32 32768, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.17, i8 0, i8 0, i32 0, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_cpsize, ptr null, ptr @stm32_fmc2_ebi_set_cpsize }, %struct.stm32_fmc2_prop { ptr @.str.18, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bl_setup }, %struct.stm32_fmc2_prop { ptr @.str.19, i8 0, i8 0, i32 2, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_setup }, %struct.stm32_fmc2_prop { ptr @.str.20, i8 0, i8 0, i32 2, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_address_hold, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_hold }, %struct.stm32_fmc2_prop { ptr @.str.21, i8 0, i8 0, i32 2, i32 0, i32 255, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_setup }, %struct.stm32_fmc2_prop { ptr @.str.22, i8 0, i8 0, i32 2, i32 0, i32 16, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bus_turnaround }, %struct.stm32_fmc2_prop { ptr @.str.23, i8 0, i8 0, i32 2, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_hold }, %struct.stm32_fmc2_prop { ptr @.str.24, i8 0, i8 0, i32 0, i32 0, i32 16, ptr @stm32_fmc2_ebi_check_clk_period, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_clk_period }, %struct.stm32_fmc2_prop { ptr @.str.25, i8 0, i8 0, i32 0, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_sync_trans, ptr @stm32_fmc2_ebi_ns_to_clk_period, ptr @stm32_fmc2_ebi_set_data_latency }, %struct.stm32_fmc2_prop { ptr @.str.26, i8 0, i8 0, i32 3, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_setup }, %struct.stm32_fmc2_prop { ptr @.str.27, i8 0, i8 0, i32 3, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_address_hold, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_hold }, %struct.stm32_fmc2_prop { ptr @.str.28, i8 0, i8 0, i32 3, i32 0, i32 255, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_setup }, %struct.stm32_fmc2_prop { ptr @.str.29, i8 0, i8 0, i32 3, i32 0, i32 16, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bus_turnaround }, %struct.stm32_fmc2_prop { ptr @.str.30, i8 0, i8 0, i32 3, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_hold }, %struct.stm32_fmc2_prop { ptr @.str.31, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_max_low_pulse }], align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"property %s could not be set: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"st,fmc2-ebi-cs-transaction-type\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"st,fmc2-ebi-cs-cclk-enable\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"st,fmc2-ebi-cs-mux-enable\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"st,fmc2-ebi-cs-buswidth\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"st,fmc2-ebi-cs-waitpol-high\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"st,fmc2-ebi-cs-waitcfg-enable\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"st,fmc2-ebi-cs-wait-enable\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"st,fmc2-ebi-cs-asyncwait-enable\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"st,fmc2-ebi-cs-cpsize\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"st,fmc2-ebi-cs-byte-lane-setup-ns\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"st,fmc2-ebi-cs-address-setup-ns\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"st,fmc2-ebi-cs-address-hold-ns\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"st,fmc2-ebi-cs-data-setup-ns\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"st,fmc2-ebi-cs-bus-turnaround-ns\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"st,fmc2-ebi-cs-data-hold-ns\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"st,fmc2-ebi-cs-clk-period-ns\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"st,fmc2-ebi-cs-data-latency-ns\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"st,fmc2-ebi-cs-write-address-setup-ns\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"st,fmc2-ebi-cs-write-address-hold-ns\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"st,fmc2-ebi-cs-write-data-setup-ns\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"st,fmc2-ebi-cs-write-bus-turnaround-ns\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"st,fmc2-ebi-cs-write-data-hold-ns\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"st,fmc2-ebi-cs-max-low-pulse-ns\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"mandatory property %s not defined in the device tree\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias453, ptr @__UNIQUE_ID_author454, ptr @__UNIQUE_ID_description455, ptr @__UNIQUE_ID_file456, ptr @__UNIQUE_ID_license457, ptr @__exitcall_stm32_fmc2_ebi_driver_exit, ptr @__initcall__kmod_stm32_fmc2_ebi__452_1205_stm32_fmc2_ebi_driver_init6, ptr @stm32_fmc2_ebi_driver_exit], section "llvm.metadata"
@switch.table.stm32_fmc2_ebi_set_cpsize = private unnamed_addr constant [9 x i32] [i32 0, i32 65536, i32 131072, i32 0, i32 196608, i32 0, i32 0, i32 0, i32 262144], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_fmc2_ebi_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_fmc2_ebi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_fmc2_ebi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 68, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %219, label %8

8:                                                ; preds = %1
  store ptr %5, ptr %6, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @device_node_to_regmap(ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %6, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %11 to i32
  br label %219

16:                                               ; preds = %8
  %17 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #6
  %18 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %6, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %219

22:                                               ; preds = %16
  %23 = tail call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %24 = icmp eq ptr %23, inttoptr (i32 -517 to ptr)
  br i1 %24, label %219, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %18, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %219

29:                                               ; preds = %25
  %30 = tail call i32 @clk_enable(ptr noundef %26) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #6
  br label %219

33:                                               ; preds = %29
  %34 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = tail call i32 @reset_control_assert(ptr noundef %23) #6
  %37 = tail call i32 @reset_control_deassert(ptr noundef %23) #6
  br label %38

38:                                               ; preds = %35, %33
  %39 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = tail call ptr @of_get_next_available_child(ptr noundef %41, ptr noundef null) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %146, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %6, i32 0, i32 3
  br label %46

46:                                               ; preds = %138, %44
  %47 = phi ptr [ %42, %44 ], [ %144, %138 ]
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %47, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef %48) #7
  call void @of_node_put(ptr noundef nonnull %47) #6
  br label %204

51:                                               ; preds = %46
  %52 = load i32, ptr %4, align 4
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.3, i32 noundef %52) #7
  call void @of_node_put(ptr noundef nonnull %47) #6
  br label %204

55:                                               ; preds = %51
  %56 = load i8, ptr %45, align 4
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 1, %52
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef %52) #7
  call void @of_node_put(ptr noundef nonnull %47) #6
  br label %204

62:                                               ; preds = %55
  %63 = icmp ult i32 %52, 4
  br i1 %63, label %64, label %138

64:                                               ; preds = %62
  %65 = load ptr, ptr %12, align 4
  %66 = shl nuw nsw i32 %52, 3
  %67 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef %66, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %68

68:                                               ; preds = %126, %64
  %69 = phi i32 [ 0, %64 ], [ %127, %126 ]
  %70 = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %69
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %69, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = lshr i32 5251609, %69
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %69, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef nonnull %6, ptr noundef %70, i32 noundef %52) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %77, %68
  %83 = lshr i32 8388361, %69
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load ptr, ptr %70, align 4
  %88 = call ptr @of_find_property(ptr noundef nonnull %47, ptr noundef %87, ptr noundef null) #6
  %89 = icmp ne ptr %88, null
  %90 = icmp ne i32 %69, 0
  %91 = select i1 %90, i1 true, i1 %89
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = zext i1 %89 to i32
  br label %115

94:                                               ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.33, ptr noundef %87) #7
  br label %122

95:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %96 = load ptr, ptr %70, align 4
  %97 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %47, ptr noundef %96, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %98 = icmp eq i32 %69, 0
  %99 = icmp slt i32 %97, 0
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  br i1 %99, label %102, label %105

102:                                              ; preds = %101
  %103 = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %69, i32 5
  %104 = load i32, ptr %103, align 4
  br label %112

105:                                              ; preds = %101
  %106 = icmp ult i32 %69, 9
  %107 = load i32, ptr %3, align 4
  br i1 %106, label %112, label %108

108:                                              ; preds = %105
  %109 = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %69, i32 7
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 %110(ptr noundef nonnull %6, i32 noundef %52, i32 noundef %107) #6
  br label %112

112:                                              ; preds = %108, %105, %102
  %113 = phi i32 [ %111, %108 ], [ %104, %102 ], [ %107, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %115

114:                                              ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.33, ptr noundef %96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %122

115:                                              ; preds = %112, %92
  %116 = phi ptr [ %87, %92 ], [ %96, %112 ]
  %117 = phi i32 [ %93, %92 ], [ %113, %112 ]
  %118 = call i32 %73(ptr noundef nonnull %6, ptr noundef %70, i32 noundef %52, i32 noundef %117) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.8, ptr noundef %116, i32 noundef %118) #7
  br label %135

122:                                              ; preds = %114, %94
  %123 = phi ptr [ %96, %114 ], [ %87, %94 ]
  %124 = phi i32 [ %97, %114 ], [ -22, %94 ]
  %125 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.8, ptr noundef %123, i32 noundef %124) #7
  br label %135

126:                                              ; preds = %115, %77
  %127 = add nuw nsw i32 %69, 1
  %128 = icmp eq i32 %127, 23
  br i1 %128, label %129, label %68

129:                                              ; preds = %126
  %130 = load ptr, ptr %12, align 4
  %131 = call i32 @regmap_update_bits_base(ptr noundef %130, i32 noundef %66, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %132 = load i32, ptr %4, align 4
  %133 = load i8, ptr %45, align 4
  %134 = shl nuw i32 1, %132
  br label %138

135:                                              ; preds = %122, %120
  %136 = phi i32 [ %118, %120 ], [ %124, %122 ]
  %137 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %137, i32 noundef %136) #7
  call void @of_node_put(ptr noundef nonnull %47) #6
  br label %204

138:                                              ; preds = %129, %62
  %139 = phi i32 [ %134, %129 ], [ %58, %62 ]
  %140 = phi i8 [ %133, %129 ], [ %56, %62 ]
  %141 = trunc i32 %139 to i8
  %142 = or i8 %140, %141
  store i8 %142, ptr %45, align 4
  %143 = load ptr, ptr %40, align 8
  %144 = call ptr @of_get_next_available_child(ptr noundef %143, ptr noundef nonnull %47) #6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %46

146:                                              ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.6) #7
  br label %204

147:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %148 = load i8, ptr %45, align 4
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %12, align 4
  %153 = call i32 @regmap_read(ptr noundef %152, i32 noundef 0, ptr noundef nonnull %2) #6
  %154 = load i32, ptr %2, align 4
  %155 = and i32 %154, 40960
  %156 = icmp eq i32 %155, 0
  %157 = load i8, ptr %45, align 4
  %158 = and i8 %157, 16
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %156, i1 true, i1 %159
  br i1 %160, label %161, label %203

161:                                              ; preds = %151, %147
  %162 = phi i8 [ %148, %147 ], [ %157, %151 ]
  %163 = and i8 %162, 2
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %12, align 4
  %167 = call i32 @regmap_read(ptr noundef %166, i32 noundef 8, ptr noundef nonnull %2) #6
  %168 = load i32, ptr %2, align 4
  %169 = and i32 %168, 40960
  %170 = icmp eq i32 %169, 0
  %171 = load i8, ptr %45, align 4
  %172 = and i8 %171, 16
  %173 = icmp eq i8 %172, 0
  %174 = select i1 %170, i1 true, i1 %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %165, %161
  %176 = phi i8 [ %162, %161 ], [ %171, %165 ]
  %177 = and i8 %176, 4
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %12, align 4
  %181 = call i32 @regmap_read(ptr noundef %180, i32 noundef 16, ptr noundef nonnull %2) #6
  %182 = load i32, ptr %2, align 4
  %183 = and i32 %182, 40960
  %184 = icmp eq i32 %183, 0
  %185 = load i8, ptr %45, align 4
  %186 = and i8 %185, 16
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %184, i1 true, i1 %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %179, %175
  %190 = phi i8 [ %176, %175 ], [ %185, %179 ]
  %191 = and i8 %190, 8
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %12, align 4
  %195 = call i32 @regmap_read(ptr noundef %194, i32 noundef 24, ptr noundef nonnull %2) #6
  %196 = load i32, ptr %2, align 4
  %197 = and i32 %196, 40960
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %193
  %200 = load i8, ptr %45, align 4
  %201 = and i8 %200, 16
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199, %179, %165, %151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.7) #7
  br label %204

204:                                              ; preds = %203, %146, %135, %61, %54, %50
  %205 = phi i32 [ -19, %146 ], [ -22, %203 ], [ %136, %135 ], [ -22, %61 ], [ -22, %54 ], [ %48, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %214

206:                                              ; preds = %199, %193, %189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %207 = load ptr, ptr %12, align 4
  %208 = call i32 @regmap_update_bits_base(ptr noundef %207, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %209 = load ptr, ptr %40, align 8
  %210 = call i32 @of_platform_populate(ptr noundef %209, ptr noundef null, ptr noundef null, ptr noundef %39) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  call fastcc void @stm32_fmc2_ebi_save_setup(ptr noundef nonnull %6)
  %213 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %213, align 8
  br label %219

214:                                              ; preds = %206, %204
  %215 = phi i32 [ %205, %204 ], [ %210, %206 ]
  call fastcc void @stm32_fmc2_ebi_disable_banks(ptr noundef nonnull %6)
  %216 = load ptr, ptr %12, align 4
  %217 = call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %218 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %218) #6
  call void @clk_unprepare(ptr noundef %218) #6
  br label %219

219:                                              ; preds = %214, %212, %32, %25, %22, %20, %14, %1
  %220 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %215, %214 ], [ 0, %212 ], [ -12, %1 ], [ -517, %22 ], [ %30, %32 ], [ %27, %25 ]
  ret i32 %220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %4) #6
  tail call fastcc void @stm32_fmc2_ebi_disable_banks(ptr noundef %3)
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_ebi_save_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 4, i32 0
  %5 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef %4) #6
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 5, i32 0
  %8 = tail call i32 @regmap_read(ptr noundef %6, i32 noundef 4, ptr noundef %7) #6
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 6, i32 0
  %11 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 260, ptr noundef %10) #6
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 4, i32 1
  %14 = tail call i32 @regmap_read(ptr noundef %12, i32 noundef 8, ptr noundef %13) #6
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 5, i32 1
  %17 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 12, ptr noundef %16) #6
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 6, i32 1
  %20 = tail call i32 @regmap_read(ptr noundef %18, i32 noundef 268, ptr noundef %19) #6
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 4, i32 2
  %23 = tail call i32 @regmap_read(ptr noundef %21, i32 noundef 16, ptr noundef %22) #6
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 5, i32 2
  %26 = tail call i32 @regmap_read(ptr noundef %24, i32 noundef 20, ptr noundef %25) #6
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 6, i32 2
  %29 = tail call i32 @regmap_read(ptr noundef %27, i32 noundef 276, ptr noundef %28) #6
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 4, i32 3
  %32 = tail call i32 @regmap_read(ptr noundef %30, i32 noundef 24, ptr noundef %31) #6
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 5, i32 3
  %35 = tail call i32 @regmap_read(ptr noundef %33, i32 noundef 28, ptr noundef %34) #6
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 6, i32 3
  %38 = tail call i32 @regmap_read(ptr noundef %36, i32 noundef 284, ptr noundef %37) #6
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 7
  %41 = tail call i32 @regmap_read(ptr noundef %39, i32 noundef 32, ptr noundef %40) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_ebi_disable_banks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %2, align 4
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = load i8, ptr %2, align 4
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %5, %1 ], [ %12, %8 ]
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = load i8, ptr %2, align 4
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %21, %17 ], [ %14, %13 ]
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = load i8, ptr %2, align 4
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ %23, %22 ]
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %38

38:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_trans_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  switch i32 %3, label %33 [
    i32 0, label %23
    i32 1, label %5
    i32 2, label %15
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
  ]

5:                                                ; preds = %4
  br label %23

6:                                                ; preds = %4
  br label %15

7:                                                ; preds = %4
  br label %23

8:                                                ; preds = %4
  br label %15

9:                                                ; preds = %4
  br label %15

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  br label %23

12:                                               ; preds = %4
  br label %23

13:                                               ; preds = %4
  br label %23

14:                                               ; preds = %4
  br label %23

15:                                               ; preds = %10, %9, %8, %6, %4
  %16 = phi i32 [ 805306368, %10 ], [ 536870912, %9 ], [ 268435456, %8 ], [ 0, %6 ], [ 0, %4 ]
  %17 = phi i32 [ 20552, %10 ], [ 20552, %9 ], [ 20552, %8 ], [ 20484, %6 ], [ 20480, %4 ]
  %18 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = shl i32 %2, 3
  %21 = add i32 %20, 260
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef 805306368, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %23

23:                                               ; preds = %15, %14, %13, %12, %11, %7, %5, %4
  %24 = phi i32 [ %17, %15 ], [ 4096, %4 ], [ 4100, %5 ], [ 4168, %7 ], [ 528644, %11 ], [ 4356, %12 ], [ 528712, %13 ], [ 4424, %14 ]
  %25 = phi i32 [ %16, %15 ], [ %3, %4 ], [ 0, %5 ], [ 0, %7 ], [ 0, %11 ], [ 0, %12 ], [ 0, %13 ], [ 0, %14 ]
  %26 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %2, 3
  %29 = or i32 %28, 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %29, i32 noundef 805306368, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = load ptr, ptr %26, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %28, i32 noundef 553294, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %33

33:                                               ; preds = %23, %4
  %34 = phi i32 [ 0, %23 ], [ -22, %4 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_cclk(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %4) #6
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bit_field(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %24 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
  ]

7:                                                ; preds = %4
  %8 = shl i32 %2, 3
  br label %15

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  %11 = or i32 %10, 4
  br label %15

12:                                               ; preds = %4
  %13 = shl i32 %2, 3
  %14 = add i32 %13, 260
  br label %15

15:                                               ; preds = %12, %9, %7, %4
  %16 = phi i32 [ %8, %7 ], [ %11, %9 ], [ %14, %12 ], [ 32, %4 ]
  %17 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %3, 0
  %22 = select i1 %21, i32 0, i32 %20
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %16, i32 noundef %20, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %24

24:                                               ; preds = %15, %4
  %25 = phi i32 [ 0, %15 ], [ -22, %4 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 3
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %4) #6
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, 12
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_buswidth(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  switch i32 %3, label %12 [
    i32 8, label %6
    i32 16, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ 16, %5 ], [ 0, %4 ]
  %8 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %2, 3
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %10, i32 noundef 48, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_waitcfg(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 3
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %4) #6
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, 268
  %11 = icmp eq i32 %10, 264
  %12 = select i1 %11, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_sync_trans(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 3
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %4) #6
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_async_trans(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 3
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %4) #6
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, 524544
  %11 = icmp eq i32 %10, 524544
  %12 = select i1 %11, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_cpsize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 3
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %4) #6
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, 268
  %11 = icmp eq i32 %10, 260
  %12 = select i1 %11, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_cpsize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 25)
  %6 = icmp ult i32 %5, 9
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = trunc i32 %5 to i16
  %9 = lshr i16 279, %8
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [9 x i32], ptr @switch.table.stm32_fmc2_ebi_set_cpsize, i32 0, i32 %5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %2, 3
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %17, i32 noundef 458752, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %19

19:                                               ; preds = %12, %7, %4
  %20 = phi i32 [ 0, %12 ], [ -22, %4 ], [ -22, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_ns_to_clock_cycles(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %7 = udiv i32 %6, 1000
  %8 = udiv i32 1000000000, %7
  %9 = mul i32 %2, 1000
  %10 = add i32 %9, -1
  %11 = add i32 %10, %8
  %12 = udiv i32 %11, %8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bl_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 3)
  %6 = shl nuw nsw i32 %5, 22
  %7 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %2, 3
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %9, i32 noundef 12582912, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_address_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %46 [
    i32 1, label %11
    i32 2, label %13
    i32 3, label %16
    i32 4, label %9
  ]

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  br label %19

11:                                               ; preds = %4
  %12 = shl i32 %2, 3
  br label %19

13:                                               ; preds = %4
  %14 = shl i32 %2, 3
  %15 = or i32 %14, 4
  br label %19

16:                                               ; preds = %4
  %17 = shl i32 %2, 3
  %18 = add i32 %17, 260
  br label %19

19:                                               ; preds = %16, %13, %11, %9
  %20 = phi i32 [ %10, %9 ], [ %12, %11 ], [ %14, %13 ], [ %17, %16 ]
  %21 = phi i32 [ 32, %9 ], [ %12, %11 ], [ %15, %13 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef %20, ptr noundef nonnull %5) #6
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 3
  %27 = load ptr, ptr %22, align 4
  %28 = or i32 %20, 4
  %29 = add i32 %20, 260
  %30 = select i1 %26, i32 %29, i32 %28
  %31 = call i32 @regmap_read(ptr noundef %27, i32 noundef %30, ptr noundef nonnull %6) #6
  %32 = load i32, ptr %6, align 4
  %33 = and i32 %32, 805306368
  %34 = icmp eq i32 %33, 805306368
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = load i32, ptr %5, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %19
  %40 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ %3, %35 ]
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 15)
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %21, i32 noundef 15, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %46

46:                                               ; preds = %41, %4
  %47 = phi i32 [ 0, %41 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_address_hold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %2, 3
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %4) #6
  %10 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  %13 = load ptr, ptr %6, align 4
  %14 = or i32 %8, 4
  %15 = add i32 %8, 260
  %16 = select i1 %12, i32 %15, i32 %14
  %17 = call i32 @regmap_read(ptr noundef %13, i32 noundef %16, ptr noundef nonnull %5) #6
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 524544
  %20 = icmp eq i32 %19, 524544
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, 805306368
  %24 = icmp ne i32 %23, 805306368
  %25 = and i32 %18, 2
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %3
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ -22, %28 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_address_hold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
  ]

7:                                                ; preds = %4
  %8 = shl i32 %2, 3
  br label %15

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  %11 = or i32 %10, 4
  br label %15

12:                                               ; preds = %4
  %13 = shl i32 %2, 3
  %14 = add i32 %13, 260
  br label %15

15:                                               ; preds = %12, %9, %7, %4
  %16 = phi i32 [ %8, %7 ], [ %11, %9 ], [ %14, %12 ], [ 32, %4 ]
  %17 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 15)
  %19 = shl nuw nsw i32 %18, 4
  %20 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %16, i32 noundef 240, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %23

23:                                               ; preds = %15, %4
  %24 = phi i32 [ 0, %15 ], [ -22, %4 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
  ]

7:                                                ; preds = %4
  %8 = shl i32 %2, 3
  br label %15

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  %11 = or i32 %10, 4
  br label %15

12:                                               ; preds = %4
  %13 = shl i32 %2, 3
  %14 = add i32 %13, 260
  br label %15

15:                                               ; preds = %12, %9, %7, %4
  %16 = phi i32 [ %8, %7 ], [ %11, %9 ], [ %14, %12 ], [ 32, %4 ]
  %17 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 255)
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %16, i32 noundef 65280, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %23

23:                                               ; preds = %15, %4
  %24 = phi i32 [ 0, %15 ], [ -22, %4 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bus_turnaround(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %25 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
  ]

7:                                                ; preds = %4
  %8 = shl i32 %2, 3
  br label %15

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  %11 = or i32 %10, 4
  br label %15

12:                                               ; preds = %4
  %13 = shl i32 %2, 3
  %14 = add i32 %13, 260
  br label %15

15:                                               ; preds = %12, %9, %7, %4
  %16 = phi i32 [ %8, %7 ], [ %11, %9 ], [ %14, %12 ], [ 32, %4 ]
  %17 = icmp eq i32 %3, 0
  %18 = add i32 %3, -1
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 15)
  %20 = shl nuw nsw i32 %19, 16
  %21 = select i1 %17, i32 0, i32 %20
  %22 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %16, i32 noundef 983040, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %25

25:                                               ; preds = %15, %4
  %26 = phi i32 [ 0, %15 ], [ -22, %4 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_hold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %29 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %12
    i32 4, label %19
  ]

7:                                                ; preds = %4
  %8 = shl i32 %2, 3
  br label %19

9:                                                ; preds = %4
  %10 = shl i32 %2, 3
  %11 = or i32 %10, 4
  br label %19

12:                                               ; preds = %4
  %13 = shl i32 %2, 3
  %14 = add i32 %13, 260
  %15 = icmp eq i32 %3, 0
  %16 = add i32 %3, -1
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 3)
  %18 = select i1 %15, i32 0, i32 %17
  br label %22

19:                                               ; preds = %9, %7, %4
  %20 = phi i32 [ 32, %4 ], [ %11, %9 ], [ %8, %7 ]
  %21 = tail call i32 @llvm.umin.i32(i32 %3, i32 3)
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %14, %12 ], [ %20, %19 ]
  %24 = phi i32 [ %18, %12 ], [ %21, %19 ]
  %25 = shl nuw i32 %24, 30
  %26 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %23, i32 noundef -1073741824, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %29

29:                                               ; preds = %22, %4
  %30 = phi i32 [ 0, %22 ], [ -22, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_clk_period(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %2, 3
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %4) #6
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %26

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %5) #6
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, 1048576
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %15, %11
  br label %26

26:                                               ; preds = %25, %21, %11
  %27 = phi i32 [ -22, %25 ], [ 0, %21 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_clk_period(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = add i32 %3, -1
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 1)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 15)
  %10 = shl nuw nsw i32 %9, 20
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ %10, %6 ], [ 1048576, %4 ]
  %13 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %2, 3
  %16 = or i32 %15, 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef 15728640, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_ns_to_clk_period(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_get_rate(ptr noundef %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %4) #6
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 1048576
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i32 %1, 0
  %16 = and i1 %15, %14
  %17 = load ptr, ptr %9, align 4
  %18 = shl i32 %1, 3
  %19 = or i32 %18, 4
  %20 = select i1 %16, i32 %19, i32 4
  %21 = call i32 @regmap_read(ptr noundef %17, i32 noundef %20, ptr noundef nonnull %5) #6
  %22 = mul i32 %2, 1000
  %23 = add i32 %22, -1
  %24 = udiv i32 %8, 1000
  %25 = udiv i32 1000000000, %24
  %26 = add i32 %23, %25
  %27 = udiv i32 %26, %25
  %28 = load i32, ptr %5, align 4
  %29 = lshr i32 %28, 20
  %30 = and i32 %29, 15
  %31 = add nuw nsw i32 %30, 1
  %32 = add nuw nsw i32 %30, %27
  %33 = udiv i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_latency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp ugt i32 %3, 1
  %6 = add i32 %3, -2
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 15)
  %8 = shl nuw nsw i32 %7, 24
  %9 = select i1 %5, i32 %8, i32 0
  %10 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %2, 3
  %13 = or i32 %12, 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 251658240, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_max_low_pulse(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 32, ptr noundef nonnull %5) #6
  %11 = load ptr, ptr %8, align 4
  %12 = add i32 %2, 16
  %13 = shl nuw i32 1, %12
  %14 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 32, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = add i32 %3, -1
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 255)
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 65535
  %19 = icmp ne i32 %18, 0
  %20 = icmp ugt i32 %16, %18
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr %8, align 4
  %24 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 32, i32 noundef 65535, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %25

25:                                               ; preds = %22, %7, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %7 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  %9 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %69

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 4, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef %17) #6
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 5, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4, i32 noundef %21) #6
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 6, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 260, i32 noundef %25) #6
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8, i32 noundef %29) #6
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 5, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 12, i32 noundef %33) #6
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 6, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 268, i32 noundef %37) #6
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 4, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 16, i32 noundef %41) #6
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 5, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 20, i32 noundef %45) #6
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 6, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 276, i32 noundef %49) #6
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 4, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 24, i32 noundef %53) #6
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 5, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 28, i32 noundef %57) #6
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 6, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 284, i32 noundef %61) #6
  %63 = load ptr, ptr %14, align 4
  %64 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %3, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 32, i32 noundef %65) #6
  %67 = load ptr, ptr %14, align 4
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %69

69:                                               ; preds = %13, %12, %1
  %70 = phi i32 [ 0, %13 ], [ %10, %12 ], [ %7, %1 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
