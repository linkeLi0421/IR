; ModuleID = '/llk/IR/drivers/clk/keystone/syscon-clk.c_pt.bc'
source_filename = "../drivers/clk/keystone/syscon-clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_syscon_gate_clk_data = type { ptr, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.ti_syscon_gate_clk_priv = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_syscon_clk__162_185_ti_syscon_gate_clk_driver_init6 = internal global ptr @ti_syscon_gate_clk_driver_init, section ".initcall6.init", align 4
@ti_syscon_gate_clk_driver = internal global %struct.platform_driver { ptr @ti_syscon_gate_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_syscon_gate_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_syscon_gate_clk_driver_exit = internal global ptr @ti_syscon_gate_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [56 x i8] c"syscon_clk.author=Vignesh Raghavendra <vigneshr@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [55 x i8] c"syscon_clk.description=Syscon backed gate-clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [48 x i8] c"syscon_clk.file=drivers/clk/keystone/syscon-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [23 x i8] c"syscon_clk.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"ti-syscon-gate-clk\00", align 1
@ti_syscon_gate_clk_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-ehrpwm-tbclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_clk_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-epwm-tbclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am64_clk_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to find parent regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@ti_syscon_gate_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_syscon_gate_clk_enable, ptr @ti_syscon_gate_clk_disable, ptr @ti_syscon_gate_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@am654_clk_data = internal constant [7 x %struct.ti_syscon_gate_clk_data] [%struct.ti_syscon_gate_clk_data { ptr @.str.3, i32 0, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.4, i32 4, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.5, i32 8, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.6, i32 12, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.7, i32 16, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.8, i32 20, i32 0 }, %struct.ti_syscon_gate_clk_data zeroinitializer], align 4
@am64_clk_data = internal constant [10 x %struct.ti_syscon_gate_clk_data] [%struct.ti_syscon_gate_clk_data { ptr @.str.9, i32 0, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.10, i32 0, i32 1 }, %struct.ti_syscon_gate_clk_data { ptr @.str.11, i32 0, i32 2 }, %struct.ti_syscon_gate_clk_data { ptr @.str.12, i32 0, i32 3 }, %struct.ti_syscon_gate_clk_data { ptr @.str.13, i32 0, i32 4 }, %struct.ti_syscon_gate_clk_data { ptr @.str.14, i32 0, i32 5 }, %struct.ti_syscon_gate_clk_data { ptr @.str.15, i32 0, i32 6 }, %struct.ti_syscon_gate_clk_data { ptr @.str.16, i32 0, i32 7 }, %struct.ti_syscon_gate_clk_data { ptr @.str.17, i32 0, i32 8 }, %struct.ti_syscon_gate_clk_data zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk1\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk2\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk3\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk4\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ehrpwm_tbclk5\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"epwm_tbclk0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"epwm_tbclk1\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"epwm_tbclk2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"epwm_tbclk3\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"epwm_tbclk4\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"epwm_tbclk5\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"epwm_tbclk6\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"epwm_tbclk7\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"epwm_tbclk8\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_ti_syscon_gate_clk_driver_exit, ptr @__initcall__kmod_syscon_clk__162_185_ti_syscon_gate_clk_driver_init6, ptr @ti_syscon_gate_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_syscon_gate_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_syscon_gate_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_syscon_gate_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @device_get_match_data(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @syscon_node_to_regmap(ptr noundef %8) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %18

14:                                               ; preds = %6
  %15 = icmp eq ptr %9, inttoptr (i32 -517 to ptr)
  br i1 %15, label %73, label %16

16:                                               ; preds = %14
  %17 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %73

18:                                               ; preds = %18, %11
  %19 = phi i32 [ %21, %18 ], [ 0, %11 ]
  %20 = phi ptr [ %22, %18 ], [ %4, %11 ]
  %21 = add i32 %19, 1
  %22 = getelementptr %struct.ti_syscon_gate_clk_data, ptr %20, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %11
  %26 = phi i32 [ 0, %11 ], [ %21, %18 ]
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #7
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %30 = tail call i32 @llvm.uadd.sat.i32(i32 %29, i32 4) #7
  %31 = select i1 %28, i32 -1, i32 %30
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %31, i32 noundef 3520) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %34

34:                                               ; preds = %25
  store i32 %26, ptr %32, align 4
  %35 = icmp sgt i32 %26, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %2, i32 12
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  br label %42

42:                                               ; preds = %68, %36
  %43 = phi i32 [ 0, %36 ], [ %69, %68 ]
  %44 = getelementptr %struct.ti_syscon_gate_clk_data, ptr %4, i32 %43
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %37, i8 0, i32 12, i1 false) #7, !annotation !8
  %45 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  %48 = getelementptr %struct.clk_hw_onecell_data, ptr %32, i32 0, i32 1, i32 %43
  store ptr inttoptr (i32 -12 to ptr), ptr %48, align 4
  br label %66

49:                                               ; preds = %42
  %50 = load ptr, ptr %44, align 4
  store ptr %50, ptr %2, align 4
  store ptr @ti_syscon_gate_clk_ops, ptr %38, align 4
  store ptr null, ptr %39, align 4
  store i8 0, ptr %40, align 4
  store i32 0, ptr %41, align 4
  %51 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %45, i32 0, i32 1
  store ptr %9, ptr %51, align 4
  %52 = getelementptr %struct.ti_syscon_gate_clk_data, ptr %4, i32 %43, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %45, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.ti_syscon_gate_clk_data, ptr %4, i32 %43, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = shl nuw i32 1, %56
  %58 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %45, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.clk_hw, ptr %45, i32 0, i32 2
  store ptr %2, ptr %59, align 4
  %60 = call i32 @devm_clk_hw_register(ptr noundef %3, ptr noundef nonnull %45) #7
  %61 = icmp eq i32 %60, 0
  %62 = inttoptr i32 %60 to ptr
  %63 = select i1 %61, ptr %45, ptr %62
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  %64 = getelementptr %struct.clk_hw_onecell_data, ptr %32, i32 0, i32 1, i32 %43
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %49, %47
  %67 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %67) #8
  br label %68

68:                                               ; preds = %66, %49
  %69 = add nuw nsw i32 %43, 1
  %70 = icmp eq i32 %69, %26
  br i1 %70, label %71, label %42

71:                                               ; preds = %68, %34
  %72 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %3, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %32) #7
  br label %73

73:                                               ; preds = %71, %25, %16, %14, %1
  %74 = phi i32 [ %17, %16 ], [ %72, %71 ], [ -22, %1 ], [ -517, %14 ], [ -12, %25 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_syscon_gate_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #7
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
