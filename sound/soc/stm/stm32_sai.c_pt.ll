; ModuleID = '/llk/IR/sound/soc/stm/stm32_sai.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_sai.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_sai_conf = type { i32, i32, i8 }
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
%struct.stm32_sai_data = type { ptr, ptr, ptr, ptr, ptr, %struct.stm32_sai_conf, i32, ptr, i32 }

@stm32_sai_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_sai_conf_f4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_sai_conf_h7 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description272 = internal constant [36 x i8] c"description=STM32 Soc SAI Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [46 x i8] c"author=Olivier Moysan <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias274 = internal constant [28 x i8] c"alias=platform:st,stm32-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_sai_conf_f4 = internal constant %struct.stm32_sai_conf { i32 16, i32 8, i8 0 }, align 4
@stm32_sai_conf_h7 = internal constant %struct.stm32_sai_conf { i32 0, i32 8, i8 1 }, align 4
@stm32_sai_driver = internal global %struct.platform_driver { ptr @stm32_sai_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_sai_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"st,stm32-sai\00", align 1
@stm32_sai_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr @stm32_sai_suspend, ptr @stm32_sai_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"missing bus clock pclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x8k\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"missing x8k parent clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"x11k\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"missing x11k parent clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Reset controller error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Device not found for node %pOFn\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"SAI sync provider data not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%pOFn%s already set as sync provider\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_license275], section "llvm.metadata"

@__mod_of__stm32_sai_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_sai_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_sai_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_sai_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %79

11:                                               ; preds = %5
  %12 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_sai_ids, ptr noundef %2) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 5
  %16 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %15, ptr noundef align 4 dereferenceable(12) %17, i32 12, i1 false)
  %18 = load i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %22 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  %26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %25, ptr noundef nonnull @.str.2) #6
  br label %79

27:                                               ; preds = %20, %14
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %29 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  %33 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %32, ptr noundef nonnull @.str.4) #6
  br label %79

34:                                               ; preds = %27
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %36 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 4
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i32
  %40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %39, ptr noundef nonnull @.str.6) #6
  br label %79

41:                                               ; preds = %34
  %42 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %43 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 6
  store i32 %42, ptr %43, align 4
  %44 = icmp slt i32 %42, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = ptrtoint ptr %46 to i32
  %50 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %49, ptr noundef nonnull @.str.7) #6
  br label %79

51:                                               ; preds = %45
  %52 = tail call i32 @reset_control_assert(ptr noundef %46) #6
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 429496) #6
  %54 = tail call i32 @reset_control_deassert(ptr noundef %46) #6
  %55 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %57) #7
  br label %79

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %6, i32 1016
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !8
  %63 = icmp eq i32 %62, 1245233
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %6, i32 1008
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 5, i32 1
  store i32 %67, ptr %68, align 4
  %69 = and i32 %66, 3840
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 5, i32 2
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 4
  %73 = getelementptr i8, ptr %6, i32 1012
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !8
  store i32 %74, ptr %15, align 4
  br label %75

75:                                               ; preds = %64, %60
  tail call void @clk_disable(ptr noundef %56) #6
  tail call void @clk_unprepare(ptr noundef %56) #6
  store ptr %0, ptr %3, align 4
  %76 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 7
  store ptr @stm32_sai_set_sync, ptr %76, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %77, align 8
  %78 = tail call i32 @devm_of_platform_populate(ptr noundef %2) #6
  br label %79

79:                                               ; preds = %75, %59, %48, %41, %38, %31, %24, %11, %9, %1
  %80 = phi i32 [ %10, %9 ], [ %33, %31 ], [ %40, %38 ], [ %50, %48 ], [ %57, %59 ], [ %78, %75 ], [ %26, %24 ], [ -12, %1 ], [ -22, %11 ], [ %42, %41 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_sync(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @of_find_device_by_node(ptr noundef %1) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %1) #7
  br label %92

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr %0, align 4
  br i1 %13, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10) #7
  br label %89

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.stm32_sai_data, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = tail call i32 @clk_enable(ptr noundef %21) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %38

28:                                               ; preds = %24
  %29 = add i32 %3, 3
  %30 = and i32 %29, 3
  %31 = getelementptr inbounds %struct.stm32_sai_data, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !9
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.stm32_sai_data, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #6
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %43

38:                                               ; preds = %27, %17
  %39 = phi i32 [ %25, %27 ], [ %22, %17 ]
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.8, i32 noundef %39) #7
  %42 = icmp slt i32 %39, 0
  br i1 %42, label %89, label %43

43:                                               ; preds = %38, %28
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.stm32_sai_data, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @clk_prepare(ptr noundef %48) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = tail call i32 @clk_enable(ptr noundef %48) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %55

55:                                               ; preds = %54, %43
  %56 = phi i32 [ %52, %54 ], [ %49, %43 ]
  %57 = load ptr, ptr %46, align 4
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.8, i32 noundef %56) #7
  br label %89

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.stm32_sai_data, ptr %12, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !8
  %63 = lshr i32 %62, 4
  %64 = and i32 %63, 3
  %65 = icmp eq i32 %64, 0
  %66 = icmp eq i32 %64, %2
  %67 = or i1 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %59
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3, i32 25
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq i32 %64, 1
  %74 = select i1 %73, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.11, ptr noundef %72, ptr noundef nonnull %74) #7
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3, i32 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.stm32_sai_data, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  tail call void @clk_disable(ptr noundef %79) #6
  tail call void @clk_unprepare(ptr noundef %79) #6
  br label %89

80:                                               ; preds = %59
  %81 = shl i32 %2, 4
  %82 = and i32 %81, 48
  %83 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #6, !srcloc !9
  %84 = load ptr, ptr %12, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.stm32_sai_data, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  tail call void @clk_disable(ptr noundef %88) #6
  tail call void @clk_unprepare(ptr noundef %88) #6
  br label %89

89:                                               ; preds = %80, %68, %55, %38, %15
  %90 = phi i32 [ %39, %38 ], [ -22, %15 ], [ -22, %68 ], [ 0, %80 ], [ %56, %55 ]
  %91 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @put_device(ptr noundef %91) #6
  br label %92

92:                                               ; preds = %89, %7
  %93 = phi i32 [ %90, %89 ], [ -19, %7 ]
  tail call void @of_node_put(ptr noundef %1) #6
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %13) #7
  br label %25

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !8
  %20 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 8
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_data, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  %24 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #6
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i32 [ %24, %16 ], [ %13, %12 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %13) #7
  br label %25

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !9
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_data, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  %24 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #6
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i32 [ %24, %16 ], [ %13, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 5538464}
!9 = !{i64 5538046}
