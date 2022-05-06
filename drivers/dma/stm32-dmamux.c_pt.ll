; ModuleID = '/llk/IR/drivers/dma/stm32-dmamux.c_pt.bc'
source_filename = "../drivers/dma/stm32-dmamux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.stm32_dmamux_data = type { %struct.dma_router, ptr, ptr, i32, i32, %struct.spinlock, ptr, [32 x i32], [0 x i32] }
%struct.dma_router = type { ptr, ptr }
%struct.stm32_dmamux = type { i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stm32_dmamux__223_404_stm32_dmamux_init3 = internal global ptr @stm32_dmamux_init, section ".initcall3.init", align 4
@__UNIQUE_ID_description224 = internal constant [61 x i8] c"stm32_dmamux.description=DMA Router driver for STM32 DMA MUX\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [73 x i8] c"stm32_dmamux.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [69 x i8] c"stm32_dmamux.author=Pierre-Yves Mordret <pierre-yves.mordret@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [43 x i8] c"stm32_dmamux.file=drivers/dma/stm32-dmamux\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [28 x i8] c"stm32_dmamux.license=GPL v2\00", section ".modinfo", align 1
@stm32_dmamux_driver = internal global %struct.platform_driver { ptr @stm32_dmamux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dmamux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dmamux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"stm32-dmamux\00", align 1
@stm32_dmamux_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dmamux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_dmamux_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dmamux_runtime_suspend, ptr @stm32_dmamux_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dma-masters\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't get DMA master(s) node\0A\00", align 1
@stm32_stm32dma_master_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"DMA master is not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Missing MUX output information, using %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Too many DMA Master Requests to manage\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"DMAMUX defaulting on %u requests\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing clock controller\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"clk_prep_enable error: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"invalid number of dma mux args\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid mux request number: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Run out of free DMA requests\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"can't get dma master\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__initcall__kmod_stm32_dmamux__223_404_stm32_dmamux_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dmamux_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %119, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %119

11:                                               ; preds = %7
  %12 = shl i32 %8, 2
  %13 = add i32 %12, 164
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %13, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %36, %16
  %19 = phi i32 [ %38, %36 ], [ 0, %16 ]
  %20 = phi i32 [ %39, %36 ], [ 1, %16 ]
  %21 = add i32 %20, -1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %22 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %21, ptr noundef nonnull %2) #7
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %2, align 4
  %25 = select i1 %23, ptr %24, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %26 = call ptr @of_match_node(ptr noundef nonnull @stm32_stm32dma_master_match, ptr noundef %25) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  call void @of_node_put(ptr noundef %25) #7
  br label %119

29:                                               ; preds = %18
  %30 = getelementptr %struct.stm32_dmamux_data, ptr %14, i32 0, i32 8, i32 %20
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef 1, i32 noundef 0) #7
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, ptr %30, align 4
  br label %36

35:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 32) #8
  store i32 32, ptr %30, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 32, %35 ]
  %38 = add i32 %37, %19
  call void @of_node_put(ptr noundef %25) #7
  %39 = add i32 %20, 1
  %40 = icmp sgt i32 %39, %8
  br i1 %40, label %41, label %18

41:                                               ; preds = %36
  %42 = icmp ugt i32 %38, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  br label %119

44:                                               ; preds = %41, %16
  %45 = phi i32 [ %38, %41 ], [ 0, %16 ]
  %46 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 8
  store i32 %8, ptr %47, align 4
  %48 = add nuw nsw i32 %45, 31
  %49 = lshr i32 %48, 3
  %50 = and i32 %49, 536870908
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %50, i32 noundef 3520) #7
  %52 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %119, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 4
  %56 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %55, i32 noundef 1) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 255, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 255) #8
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #7, !srcloc !9
  %61 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #7, !srcloc !10
  %62 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %63 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %62) #7
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %63 to i32
  br label %119

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 5
  store i32 0, ptr %68, align 4
  %69 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #7
  %70 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = ptrtoint ptr %69 to i32
  %74 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %73, ptr noundef nonnull @.str.8) #7
  br label %119

75:                                               ; preds = %67
  %76 = call i32 @clk_prepare(ptr noundef %69) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call i32 @clk_enable(ptr noundef %69) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  call void @clk_unprepare(ptr noundef %69) #7
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i32 [ %76, %75 ], [ %79, %81 ]
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %83) #8
  br label %119

86:                                               ; preds = %82, %78
  %87 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = icmp eq ptr %87, inttoptr (i32 -517 to ptr)
  br i1 %90, label %116, label %95

91:                                               ; preds = %86
  %92 = call i32 @reset_control_assert(ptr noundef %87) #7
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 429496) #7
  %94 = call i32 @reset_control_deassert(ptr noundef %87) #7
  br label %95

95:                                               ; preds = %91, %89
  %96 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %14, i32 0, i32 2
  store ptr %63, ptr %96, align 4
  store ptr %3, ptr %14, align 4
  %97 = getelementptr inbounds %struct.dma_router, ptr %14, i32 0, i32 1
  store ptr @stm32_dmamux_free, ptr %97, align 4
  %98 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %98, align 8
  %99 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %3) #7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #7, !srcloc !9
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #7, !srcloc !10
  %101 = load i32, ptr %46, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %103, %95
  %104 = phi i32 [ %108, %103 ], [ 0, %95 ]
  %105 = load ptr, ptr %96, align 4
  %106 = shl i32 %104, 2
  %107 = getelementptr i8, ptr %105, i32 %106
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #7, !srcloc !11
  %108 = add nuw i32 %104, 1
  %109 = load i32, ptr %46, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %103, label %111

111:                                              ; preds = %103, %95
  %112 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  %113 = call i32 @of_dma_router_register(ptr noundef nonnull %5, ptr noundef nonnull @stm32_dmamux_route_allocate, ptr noundef nonnull %14) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %116

116:                                              ; preds = %115, %89
  %117 = phi i32 [ -517, %89 ], [ %113, %115 ]
  %118 = load ptr, ptr %70, align 4
  call void @clk_disable(ptr noundef %118) #7
  call void @clk_unprepare(ptr noundef %118) #7
  br label %119

119:                                              ; preds = %116, %111, %85, %72, %65, %44, %43, %28, %11, %10, %1
  %120 = phi i32 [ -19, %10 ], [ -22, %28 ], [ -19, %43 ], [ %66, %65 ], [ %74, %72 ], [ %83, %85 ], [ %117, %116 ], [ -19, %1 ], [ -12, %11 ], [ -12, %44 ], [ 0, %111 ]
  ret i32 %120
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dmamux_free(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_dmamux, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !11
  %13 = load i32, ptr %9, align 4
  %14 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %4, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef %15) #7
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_router_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_dmamux_route_allocate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_find_device_by_node(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #8
  br label %104

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %16) #8
  br label %104

22:                                               ; preds = %14
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 12) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %104, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 5
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #7
  %29 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @_find_first_zero_bit_le(ptr noundef %30, i32 noundef %32) #7
  %34 = getelementptr inbounds %struct.stm32_dmamux, ptr %24, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  %35 = load i32, ptr %31, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #7
  %38 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.12) #8
  br label %101

39:                                               ; preds = %26
  %40 = load ptr, ptr %29, align 4
  tail call void @_set_bit(i32 noundef %33, ptr noundef %40) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #7
  %41 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %39
  %45 = getelementptr %struct.stm32_dmamux_data, ptr %8, i32 1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %52, %44
  %48 = phi i32 [ %46, %44 ], [ %59, %52 ]
  %49 = phi i32 [ 0, %44 ], [ %55, %52 ]
  %50 = phi i32 [ 1, %44 ], [ %56, %52 ]
  %51 = icmp ult i32 %33, %48
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = getelementptr %struct.stm32_dmamux_data, ptr %8, i32 0, i32 8, i32 %50
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %49
  %56 = add i32 %50, 1
  %57 = getelementptr %struct.stm32_dmamux_data, ptr %8, i32 0, i32 8, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %48
  %60 = icmp ugt i32 %56, %42
  br i1 %60, label %61, label %47

61:                                               ; preds = %52, %47, %39
  %62 = phi i32 [ 1, %39 ], [ %50, %47 ], [ %56, %52 ]
  %63 = phi i32 [ 0, %39 ], [ %49, %47 ], [ %55, %52 ]
  %64 = add i32 %62, -1
  store i32 %64, ptr %24, align 8
  %65 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #7, !annotation !8
  %66 = call i32 @__of_parse_phandle_with_args(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %64, ptr noundef nonnull %3) #7
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr %3, align 4
  %69 = select i1 %67, ptr %68, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  store ptr %69, ptr %0, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.13) #8
  br label %98

73:                                               ; preds = %61
  %74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #7
  %75 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %76 = call i32 @__pm_runtime_resume(ptr noundef %75, i32 noundef 4) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #7, !srcloc !9
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 0, i32 -1, ptr elementtype(i32) %79) #7, !srcloc !13
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %84

84:                                               ; preds = %83, %78
  call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %74) #7
  br label %98

85:                                               ; preds = %73
  call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %74) #7
  %86 = load i32, ptr %15, align 4
  %87 = getelementptr inbounds %struct.stm32_dmamux, ptr %24, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 3
  store i32 %89, ptr %90, align 4
  %91 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %88, align 4
  store i32 0, ptr %91, align 4
  %93 = sub i32 %33, %63
  store i32 %93, ptr %15, align 4
  store i32 4, ptr %9, align 4
  %94 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %8, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = shl i32 %33, 2
  %97 = getelementptr i8, ptr %95, i32 %96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %86) #7, !srcloc !11
  br label %104

98:                                               ; preds = %84, %71
  %99 = phi i32 [ %76, %84 ], [ -22, %71 ]
  %100 = load ptr, ptr %29, align 4
  call void @_clear_bit(i32 noundef %33, ptr noundef %100) #7
  br label %101

101:                                              ; preds = %98, %37
  %102 = phi i32 [ -12, %37 ], [ %99, %98 ]
  call void @kfree(ptr noundef nonnull %24) #7
  %103 = inttoptr i32 %102 to ptr
  br label %104

104:                                              ; preds = %101, %85, %22, %20, %12
  %105 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %20 ], [ %103, %101 ], [ %24, %85 ], [ inttoptr (i32 -12 to ptr), %22 ]
  ret ptr %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 2
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #7, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #7, !srcloc !13
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %31

18:                                               ; preds = %18, %10
  %19 = phi i32 [ 0, %10 ], [ %25, %18 ]
  %20 = load ptr, ptr %11, align 4
  %21 = shl i32 %19, 2
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !15
  %24 = getelementptr %struct.stm32_dmamux_data, ptr %3, i32 0, i32 7, i32 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw i32 %19, 1
  %26 = load i32, ptr %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %18, label %28

28:                                               ; preds = %18, %6
  %29 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  %30 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #7
  br label %31

31:                                               ; preds = %28, %17, %12
  %32 = phi i32 [ 0, %28 ], [ %4, %12 ], [ %4, %17 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 2
  br label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #7, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 -1, ptr elementtype(i32) %16) #7, !srcloc !13
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %33

21:                                               ; preds = %21, %13
  %22 = phi i32 [ 0, %13 ], [ %28, %21 ]
  %23 = load ptr, ptr %14, align 4
  %24 = shl i32 %22, 2
  %25 = getelementptr %struct.stm32_dmamux_data, ptr %3, i32 0, i32 7, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #7, !srcloc !11
  %28 = add nuw i32 %22, 1
  %29 = load i32, ptr %10, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %21, label %31

31:                                               ; preds = %21, %9
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  br label %33

33:                                               ; preds = %31, %20, %15, %1
  %34 = phi i32 [ 0, %31 ], [ %4, %1 ], [ %7, %15 ], [ %7, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 449352, i64 2147939323, i64 2147939349, i64 2147939396, i64 2147939418, i64 2147939446, i64 2147939466}
!10 = !{i64 2147951535, i64 2147951561, i64 2147951590, i64 2147951624, i64 2147951655, i64 2147951678}
!11 = !{i64 5222261}
!12 = !{i64 2147951042}
!13 = !{i64 435921, i64 435946, i64 435968, i64 435984, i64 435996, i64 436016, i64 436040, i64 436056, i64 436068}
!14 = !{i64 2147951168}
!15 = !{i64 5222679}
