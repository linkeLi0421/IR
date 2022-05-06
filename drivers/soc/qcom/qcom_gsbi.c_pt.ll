; ModuleID = '/llk/IR/drivers/soc/qcom/qcom_gsbi.c_pt.bc'
source_filename = "../drivers/soc/qcom/qcom_gsbi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.crci_config = type { i32, ptr }
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
%struct.gsbi_info = type { ptr, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_qcom_gsbi__162_245_gsbi_driver_init6 = internal global ptr @gsbi_driver_init, section ".initcall6.init", align 4
@gsbi_driver = internal global %struct.platform_driver { ptr @gsbi_probe, ptr @gsbi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gsbi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gsbi_driver_exit = internal global ptr @gsbi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [52 x i8] c"qcom_gsbi.author=Andy Gross <agross@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [39 x i8] c"qcom_gsbi.description=QCOM GSBI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [42 x i8] c"qcom_gsbi.file=drivers/soc/qcom/qcom_gsbi\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [25 x i8] c"qcom_gsbi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"gsbi\00", align 1
@gsbi_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gsbi-v1.0.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"syscon-tcsr\00", align 1
@tcsr_dt_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tcsr-ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @config_ipq8064 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tcsr-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @config_apq8064 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tcsr-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @config_msm8960 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tcsr-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @config_msm8660 }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no matching TCSR\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"missing cell-index\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid cell-index\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"qcom,mode\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"missing mode configuration\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"qcom,crci\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"GSBI port protocol: %d crci: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@config_ipq8064 = internal constant %struct.crci_config { i32 2, ptr @crci_ipq8064 }, align 4
@config_apq8064 = internal constant %struct.crci_config { i32 2, ptr @crci_apq8064 }, align 4
@config_msm8960 = internal constant %struct.crci_config { i32 2, ptr @crci_msm8960 }, align 4
@config_msm8660 = internal constant %struct.crci_config { i32 4, ptr @crci_msm8660 }, align 4
@crci_ipq8064 = internal constant [2 x [12 x i32]] [[12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912], [12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912]], align 4
@crci_apq8064 = internal constant [2 x [12 x i32]] [[12 x i32] [i32 6144, i32 24576, i32 48, i32 192, i32 768, i32 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0]], align 4
@crci_msm8960 = internal constant [2 x [12 x i32]] [[12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 192, i32 768, i32 6144, i32 24576, i32 0, i32 0]], align 4
@crci_msm8660 = internal constant [4 x [12 x i32]] [[12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912], [12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912], [12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912], [12 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_gsbi_driver_exit, ptr @__initcall__kmod_qcom_gsbi__162_245_gsbi_driver_init6, ptr @gsbi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gsbi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gsbi_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gsbi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gsbi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsbi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %87

13:                                               ; preds = %8
  %14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %15 = getelementptr inbounds %struct.gsbi_info, ptr %6, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @of_parse_phandle(ptr noundef %5)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @of_match_node(ptr noundef nonnull @tcsr_dt_match, ptr noundef nonnull %18) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.of_device_id, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi ptr [ %25, %23 ], [ null, %26 ]
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  br label %29

29:                                               ; preds = %27, %17, %13
  %30 = phi ptr [ null, %13 ], [ %28, %27 ], [ null, %17 ]
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %87

34:                                               ; preds = %29
  %35 = load i32, ptr %2, align 4
  %36 = add i32 %35, -13
  %37 = icmp ult i32 %36, -12
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %87

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gsbi_info, ptr %6, i32 0, i32 1
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef %40, i32 noundef 1, i32 noundef 0) #7
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  br label %87

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.gsbi_info, ptr %6, i32 0, i32 2
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %45, i32 noundef 1, i32 noundef 0) #7
  %47 = load i32, ptr %40, align 4
  %48 = load i32, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %47, i32 noundef %48) #8
  %49 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  store ptr %49, ptr %6, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = ptrtoint ptr %49 to i32
  br label %87

53:                                               ; preds = %44
  call fastcc void @clk_prepare_enable(ptr noundef %49)
  %54 = load i32, ptr %40, align 4
  %55 = shl i32 %54, 4
  %56 = load i32, ptr %45, align 4
  %57 = or i32 %55, %56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %57) #7, !srcloc !9
  %58 = icmp eq ptr %30, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %30, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.crci_config, ptr %30, i32 0, i32 1
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ 0, %62 ], [ %78, %64 ]
  %66 = load ptr, ptr %63, align 4
  %67 = load i32, ptr %2, align 4
  %68 = add i32 %67, -1
  %69 = getelementptr [12 x i32], ptr %66, i32 %65, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %40, align 4
  %72 = icmp eq i32 %71, 3
  %73 = load ptr, ptr %15, align 4
  %74 = shl i32 %65, 2
  %75 = add i32 %74, 112
  %76 = select i1 %72, i32 0, i32 %70
  %77 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %75, i32 noundef %70, i32 noundef %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %78 = add nuw i32 %65, 1
  %79 = load i32, ptr %30, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %64, label %81

81:                                               ; preds = %64, %59, %53
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  call void @arm_heavy_mb() #7
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %82, align 8
  %83 = call i32 @of_platform_populate(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef %3) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %6, align 4
  call void @clk_disable(ptr noundef %86) #7
  call void @clk_unprepare(ptr noundef %86) #7
  br label %87

87:                                               ; preds = %85, %81, %51, %43, %38, %33, %11, %1
  %88 = phi i32 [ %12, %11 ], [ -22, %33 ], [ -22, %38 ], [ -22, %43 ], [ %52, %51 ], [ -12, %1 ], [ %83, %85 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsbi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #7
  tail call void @clk_unprepare(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

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
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 1723187}
!10 = !{i64 2151456738}
