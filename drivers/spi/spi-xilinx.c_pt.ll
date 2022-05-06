; ModuleID = '/llk/IR/drivers/spi/spi-xilinx.c_pt.bc'
source_filename = "../drivers/spi/spi-xilinx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.xspi_platform_data = type { i16, i8, ptr, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.xilinx_spi = type { %struct.spi_bitbang, %struct.completion, ptr, i32, ptr, ptr, i8, i32, i32, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_alias228 = internal constant [37 x i8] c"spi_xilinx.alias=platform:xilinx_spi\00", section ".modinfo", align 1
@__initcall__kmod_spi_xilinx__229_539_xilinx_spi_driver_init6 = internal global ptr @xilinx_spi_driver_init, section ".initcall6.init", align 4
@xilinx_spi_driver = internal global %struct.platform_driver { ptr @xilinx_spi_probe, ptr @xilinx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinx_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xilinx_spi_driver_exit = internal global ptr @xilinx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [64 x i8] c"spi_xilinx.author=MontaVista Software, Inc. <source@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [41 x i8] c"spi_xilinx.description=Xilinx SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [39 x i8] c"spi_xilinx.file=drivers/spi/spi-xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [23 x i8] c"spi_xilinx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"xilinx_spi\00", align 1
@xilinx_spi_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-quad-spi-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-spi-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-spi-2.00.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"xlnx,num-ss-bits\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"xlnx,num-transfer-bits\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Missing slave select configuration data\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid number of spi slaves\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"spi_bitbang_start FAILED\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"at %pR, irq=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Detected stall. Check C_SPI_MODE and C_SPI_MEMORY\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_xilinx_spi_driver_exit, ptr @__initcall__kmod_spi_xilinx__229_539_xilinx_spi_driver_init6, ptr @xilinx_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xilinx_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_spi_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xilinx_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinx_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i16, ptr %6, align 4
  %10 = zext i16 %9 to i32
  store i32 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.xspi_platform_data, ptr %6, i32 0, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %3, align 4
  br label %24

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %18 = load ptr, ptr %15, align 8
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 8, ptr %3, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %8
  %25 = phi i32 [ %23, %22 ], [ %10, %8 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  br label %139

28:                                               ; preds = %24
  %29 = icmp sgt i32 %25, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  br label %139

31:                                               ; preds = %28
  %32 = call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 112, i1 noundef zeroext false) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %139, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 5
  store i32 47, ptr %35, align 8
  %36 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 8
  store i32 -1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_bitbang, ptr %37, i32 0, i32 4
  store ptr %32, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_bitbang, ptr %37, i32 0, i32 6
  store ptr @xilinx_spi_chipselect, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_bitbang, ptr %37, i32 0, i32 5
  store ptr @xilinx_spi_setup_transfer, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_bitbang, ptr %37, i32 0, i32 7
  store ptr @xilinx_spi_txrx_bufs, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %44, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #7
  %45 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %46 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %45) #7
  %47 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = ptrtoint ptr %46 to i32
  br label %137

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 2
  store i16 %54, ptr %55, align 8
  %56 = load i32, ptr %2, align 4
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 3
  store i16 %57, ptr %58, align 2
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 25
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 9
  store ptr @xspi_read32, ptr %62, align 4
  %63 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 10
  store ptr @xspi_write32, ptr %63, align 4
  %64 = load ptr, ptr %47, align 4
  %65 = getelementptr i8, ptr %64, i32 96
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 1) #7, !srcloc !10
  %66 = load ptr, ptr %62, align 4
  %67 = load ptr, ptr %47, align 4
  %68 = getelementptr i8, ptr %67, i32 96
  %69 = call i32 %66(ptr noundef %68) #7
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  store ptr @xspi_read32_be, ptr %62, align 4
  store ptr @xspi_write32_be, ptr %63, align 4
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, ptr %3, align 4
  %75 = add i32 %74, -1
  %76 = shl nuw i32 1, %75
  %77 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 7
  store i32 %76, ptr %77, align 8
  %78 = sdiv i32 %74, 8
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 6
  store i8 %79, ptr %80, align 4
  %81 = load ptr, ptr %63, align 4
  %82 = load ptr, ptr %47, align 4
  %83 = getelementptr i8, ptr %82, i32 64
  call void %81(i32 noundef 10, ptr noundef %83) #7
  br label %84

84:                                               ; preds = %84, %73
  %85 = phi i32 [ 0, %73 ], [ %93, %84 ]
  %86 = load ptr, ptr %63, align 4
  %87 = load ptr, ptr %47, align 4
  %88 = getelementptr i8, ptr %87, i32 104
  call void %86(i32 noundef 0, ptr noundef %88) #7
  %89 = load ptr, ptr %62, align 4
  %90 = load ptr, ptr %47, align 4
  %91 = getelementptr i8, ptr %90, i32 100
  %92 = call i32 %89(ptr noundef %91) #7
  %93 = add i32 %85, 1
  %94 = and i32 %92, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %84, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 7
  store i32 %93, ptr %97, align 4
  %98 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %99 = getelementptr inbounds %struct.xilinx_spi, ptr %37, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = icmp sgt i32 %98, -1
  %101 = icmp eq i32 %98, -6
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %96
  br i1 %100, label %104, label %114

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load ptr, ptr %4, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ %109, %108 ], [ %106, %104 ]
  %112 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %98, ptr noundef nonnull @xilinx_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef %37) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %110, %103
  call fastcc void @xspi_init_hw(ptr noundef %37)
  %115 = call i32 @spi_bitbang_start(ptr noundef %37) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  br label %137

118:                                              ; preds = %114
  %119 = load i32, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %45, i32 noundef %119) #8
  br i1 %7, label %135, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.xspi_platform_data, ptr %6, i32 0, i32 3
  %122 = load i8, ptr %121, align 4
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.xspi_platform_data, ptr %6, i32 0, i32 2
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i32 [ 0, %124 ], [ %131, %126 ]
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr %struct.spi_board_info, ptr %128, i32 %127
  %130 = call ptr @spi_new_device(ptr noundef nonnull %32, ptr noundef %129) #7
  %131 = add nuw nsw i32 %127, 1
  %132 = load i8, ptr %121, align 4
  %133 = zext i8 %132 to i32
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %126, label %135

135:                                              ; preds = %126, %120, %118
  %136 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %32, ptr %136, align 8
  br label %139

137:                                              ; preds = %117, %110, %96, %49
  %138 = phi i32 [ %50, %49 ], [ %112, %110 ], [ %115, %117 ], [ %98, %96 ]
  call void @put_device(ptr noundef nonnull %32) #7
  br label %139

139:                                              ; preds = %137, %135, %31, %30, %27
  %140 = phi i32 [ -22, %30 ], [ %138, %137 ], [ 0, %135 ], [ -22, %27 ], [ -19, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xilinx_spi, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @spi_bitbang_stop(ptr noundef %5) #7
  %8 = getelementptr inbounds %struct.xilinx_spi, ptr %5, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 40
  tail call void %9(i32 noundef 0, ptr noundef %10) #7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %7, i32 28
  tail call void %11(i32 noundef 0, ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.spi_bitbang, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @put_device(ptr noundef nonnull %14) #7
  br label %17

17:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_spi_chipselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 112
  tail call void %10(i32 noundef %12, ptr noundef %15) #7
  br label %52

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 96
  %22 = tail call i32 %18(ptr noundef %21) #7
  %23 = and i32 %22, 64998
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %25, 4
  %27 = and i32 %26, 16
  %28 = or i32 %27, %23
  %29 = shl i32 %25, 2
  %30 = and i32 %29, 8
  %31 = or i32 %28, %30
  %32 = shl i32 %25, 6
  %33 = and i32 %32, 512
  %34 = or i32 %31, %33
  %35 = lshr i32 %25, 5
  %36 = and i32 %35, 1
  %37 = or i32 %34, %36
  %38 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr i8, ptr %40, i32 96
  tail call void %39(i32 noundef %37, ptr noundef %41) #7
  %42 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = xor i32 %47, %43
  %49 = load ptr, ptr %38, align 4
  %50 = load ptr, ptr %19, align 4
  %51 = getelementptr i8, ptr %50, i32 112
  tail call void %49(i32 noundef %48, ptr noundef %51) #7
  br label %52

52:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_spi_setup_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  br i1 %10, label %20, label %15

15:                                               ; preds = %2
  %16 = xor i32 %14, -1
  %17 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  store i32 %19, ptr %17, align 4
  br label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %14, %22
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_spi_txrx_bufs(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 5
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = udiv i32 %13, %16
  %18 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %53

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %17, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 96
  %31 = tail call i32 %27(ptr noundef %30) #7
  %32 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = and i32 %31, 65279
  %35 = or i32 %34, 256
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr i8, ptr %36, i32 96
  tail call void %33(i32 noundef %35, ptr noundef %37) #7
  %38 = load ptr, ptr %26, align 4
  %39 = load ptr, ptr %28, align 4
  %40 = getelementptr i8, ptr %39, i32 32
  %41 = tail call i32 %38(ptr noundef %40) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %25
  %44 = load ptr, ptr %32, align 4
  %45 = load ptr, ptr %28, align 4
  %46 = getelementptr i8, ptr %45, i32 32
  tail call void %44(i32 noundef %41, ptr noundef %46) #7
  br label %47

47:                                               ; preds = %43, %25
  %48 = load ptr, ptr %32, align 4
  %49 = load ptr, ptr %28, align 4
  %50 = getelementptr i8, ptr %49, i32 28
  tail call void %48(i32 noundef -2147483648, ptr noundef %50) #7
  %51 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 1
  store i32 0, ptr %51, align 4
  %52 = and i32 %31, 65535
  br label %53

53:                                               ; preds = %47, %21, %2
  %54 = phi i1 [ true, %47 ], [ false, %21 ], [ false, %2 ]
  %55 = phi i32 [ %52, %47 ], [ 0, %21 ], [ 0, %2 ]
  %56 = icmp ult i32 %13, %16
  br i1 %56, label %200, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 7
  %59 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 10
  %60 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 2
  %61 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 9
  %62 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 1
  %63 = or i32 %55, 256
  br label %64

64:                                               ; preds = %197, %57
  %65 = phi i32 [ %17, %57 ], [ %198, %197 ]
  %66 = load i32, ptr %58, align 4
  %67 = tail call i32 @llvm.smin.i32(i32 %65, i32 %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %97, %64
  %70 = phi i32 [ %71, %97 ], [ %67, %64 ]
  %71 = add i32 %70, -1
  %72 = load ptr, ptr %8, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %59, align 4
  %76 = load ptr, ptr %60, align 4
  %77 = getelementptr i8, ptr %76, i32 104
  tail call void %75(i32 noundef 0, ptr noundef %77) #7
  br label %97

78:                                               ; preds = %69
  %79 = load i8, ptr %14, align 4
  switch i8 %79, label %88 [
    i8 1, label %80
    i8 2, label %83
    i8 4, label %86
  ]

80:                                               ; preds = %78
  %81 = load i8, ptr %72, align 1
  %82 = zext i8 %81 to i32
  br label %88

83:                                               ; preds = %78
  %84 = load i16, ptr %72, align 2
  %85 = zext i16 %84 to i32
  br label %88

86:                                               ; preds = %78
  %87 = load i32, ptr %72, align 4
  br label %88

88:                                               ; preds = %86, %83, %80, %78
  %89 = phi i32 [ 0, %78 ], [ %87, %86 ], [ %85, %83 ], [ %82, %80 ]
  %90 = load ptr, ptr %59, align 4
  %91 = load ptr, ptr %60, align 4
  %92 = getelementptr i8, ptr %91, i32 104
  tail call void %90(i32 noundef %89, ptr noundef %92) #7
  %93 = load i8, ptr %14, align 4
  %94 = zext i8 %93 to i32
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr i8, ptr %95, i32 %94
  store ptr %96, ptr %8, align 4
  br label %97

97:                                               ; preds = %88, %74
  %98 = icmp eq i32 %71, 0
  br i1 %98, label %99, label %69

99:                                               ; preds = %97, %64
  br i1 %54, label %100, label %107

100:                                              ; preds = %99
  %101 = load ptr, ptr %59, align 4
  %102 = load ptr, ptr %60, align 4
  %103 = getelementptr i8, ptr %102, i32 96
  tail call void %101(i32 noundef %55, ptr noundef %103) #7
  tail call void @wait_for_completion(ptr noundef %62) #7
  %104 = load ptr, ptr %59, align 4
  %105 = load ptr, ptr %60, align 4
  %106 = getelementptr i8, ptr %105, i32 96
  tail call void %104(i32 noundef %63, ptr noundef %106) #7
  br label %112

107:                                              ; preds = %99
  %108 = load ptr, ptr %61, align 4
  %109 = load ptr, ptr %60, align 4
  %110 = getelementptr i8, ptr %109, i32 100
  %111 = tail call i32 %108(ptr noundef %110) #7
  br label %112

112:                                              ; preds = %107, %100
  %113 = phi i32 [ 4, %100 ], [ %111, %107 ]
  br i1 %68, label %197, label %114

114:                                              ; preds = %194, %112
  %115 = phi i32 [ %144, %194 ], [ 10, %112 ]
  %116 = phi i32 [ %170, %194 ], [ %113, %112 ]
  %117 = phi i32 [ %195, %194 ], [ %67, %112 ]
  %118 = and i32 %116, 4
  %119 = icmp ne i32 %118, 0
  %120 = and i32 %116, 1
  %121 = icmp eq i32 %120, 0
  br label %122

122:                                              ; preds = %166, %114
  %123 = phi i32 [ %115, %114 ], [ %144, %166 ]
  %124 = phi i32 [ %117, %114 ], [ %167, %166 ]
  %125 = icmp eq i32 %124, %67
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = add i32 %123, -1
  %128 = icmp ne i32 %123, 0
  %129 = select i1 %128, i1 true, i1 %119
  %130 = select i1 %129, i1 true, i1 %121
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  %132 = load ptr, ptr %60, align 4
  %133 = load ptr, ptr %59, align 4
  %134 = getelementptr i8, ptr %132, i32 64
  tail call void %133(i32 noundef 10, ptr noundef %134) #7
  %135 = load ptr, ptr %59, align 4
  %136 = getelementptr i8, ptr %132, i32 40
  tail call void %135(i32 noundef 4, ptr noundef %136) #7
  %137 = load ptr, ptr %59, align 4
  %138 = getelementptr i8, ptr %132, i32 28
  tail call void %137(i32 noundef 0, ptr noundef %138) #7
  %139 = load ptr, ptr %59, align 4
  %140 = getelementptr i8, ptr %132, i32 112
  tail call void %139(i32 noundef 65535, ptr noundef %140) #7
  %141 = load ptr, ptr %59, align 4
  %142 = getelementptr i8, ptr %132, i32 96
  tail call void %141(i32 noundef 230, ptr noundef %142) #7
  br label %212

143:                                              ; preds = %126, %122
  %144 = phi i32 [ %127, %126 ], [ %123, %122 ]
  %145 = icmp sgt i32 %124, 1
  %146 = select i1 %119, i1 %145, i1 false
  %147 = load ptr, ptr %61, align 4
  %148 = load ptr, ptr %60, align 4
  br i1 %146, label %149, label %168

149:                                              ; preds = %143
  %150 = getelementptr i8, ptr %148, i32 108
  %151 = tail call i32 %147(ptr noundef %150) #7
  %152 = load ptr, ptr %11, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %166, label %154

154:                                              ; preds = %149
  %155 = load i8, ptr %14, align 4
  switch i8 %155, label %161 [
    i8 1, label %156
    i8 2, label %158
    i8 4, label %160
  ]

156:                                              ; preds = %154
  %157 = trunc i32 %151 to i8
  store i8 %157, ptr %152, align 1
  br label %161

158:                                              ; preds = %154
  %159 = trunc i32 %151 to i16
  store i16 %159, ptr %152, align 2
  br label %161

160:                                              ; preds = %154
  store i32 %151, ptr %152, align 4
  br label %161

161:                                              ; preds = %160, %158, %156, %154
  %162 = load i8, ptr %14, align 4
  %163 = zext i8 %162 to i32
  %164 = load ptr, ptr %11, align 4
  %165 = getelementptr i8, ptr %164, i32 %163
  store ptr %165, ptr %11, align 4
  br label %166

166:                                              ; preds = %161, %149
  %167 = add nsw i32 %124, -1
  br label %122

168:                                              ; preds = %143
  %169 = getelementptr i8, ptr %148, i32 100
  %170 = tail call i32 %147(ptr noundef %169) #7
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %168
  %174 = load ptr, ptr %61, align 4
  %175 = load ptr, ptr %60, align 4
  %176 = getelementptr i8, ptr %175, i32 108
  %177 = tail call i32 %174(ptr noundef %176) #7
  %178 = load ptr, ptr %11, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %192, label %180

180:                                              ; preds = %173
  %181 = load i8, ptr %14, align 4
  switch i8 %181, label %187 [
    i8 1, label %182
    i8 2, label %184
    i8 4, label %186
  ]

182:                                              ; preds = %180
  %183 = trunc i32 %177 to i8
  store i8 %183, ptr %178, align 1
  br label %187

184:                                              ; preds = %180
  %185 = trunc i32 %177 to i16
  store i16 %185, ptr %178, align 2
  br label %187

186:                                              ; preds = %180
  store i32 %177, ptr %178, align 4
  br label %187

187:                                              ; preds = %186, %184, %182, %180
  %188 = load i8, ptr %14, align 4
  %189 = zext i8 %188 to i32
  %190 = load ptr, ptr %11, align 4
  %191 = getelementptr i8, ptr %190, i32 %189
  store ptr %191, ptr %11, align 4
  br label %192

192:                                              ; preds = %187, %173
  %193 = add i32 %124, -1
  br label %194

194:                                              ; preds = %192, %168
  %195 = phi i32 [ %124, %168 ], [ %193, %192 ]
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %114

197:                                              ; preds = %194, %112
  %198 = sub i32 %65, %67
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %64

200:                                              ; preds = %197, %53
  br i1 %54, label %201, label %210

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 10
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.xilinx_spi, ptr %6, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %205, i32 28
  tail call void %203(i32 noundef 0, ptr noundef %206) #7
  %207 = load ptr, ptr %202, align 4
  %208 = load ptr, ptr %204, align 4
  %209 = getelementptr i8, ptr %208, i32 96
  tail call void %207(i32 noundef %55, ptr noundef %209) #7
  br label %210

210:                                              ; preds = %201, %200
  %211 = load i32, ptr %12, align 4
  br label %212

212:                                              ; preds = %210, %131
  %213 = phi i32 [ %211, %210 ], [ -5, %131 ]
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xspi_read32(ptr noundef %0) #2 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xspi_write32(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %0) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xspi_read32_be(ptr noundef %0) #2 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xspi_write32_be(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #7, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_spi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xilinx_spi, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xilinx_spi, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 %4(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.xilinx_spi, ptr %1, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  tail call void %10(i32 noundef %8, ptr noundef %12) #7
  %13 = and i32 %8, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.xilinx_spi, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 1, %15 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xspi_init_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xilinx_spi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xilinx_spi, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 64
  tail call void %5(i32 noundef 10, ptr noundef %6) #7
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %3, i32 40
  tail call void %7(i32 noundef 4, ptr noundef %8) #7
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %3, i32 28
  tail call void %9(i32 noundef 0, ptr noundef %10) #7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %3, i32 112
  tail call void %11(i32 noundef 65535, ptr noundef %12) #7
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %3, i32 96
  tail call void %13(i32 noundef 230, ptr noundef %14) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151012455}
!10 = !{i64 3471362}
!11 = !{i64 3471780}
!12 = !{i64 2151011233}
!13 = !{i64 2153001516}
!14 = !{i64 2153001051}
