; ModuleID = '/llk/IR/drivers/soc/samsung/exynos-chipid.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-chipid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.exynos_soc_id = type { ptr, i32 }
%struct.exynos_chipid_variant = type { i32, i32, i32 }
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_exynos_chipid__166_203_exynos_chipid_driver_init6 = internal global ptr @exynos_chipid_driver_init, section ".initcall6.init", align 4
@exynos_chipid_driver = internal global %struct.platform_driver { ptr @exynos_chipid_probe, ptr @exynos_chipid_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_chipid_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos_chipid_driver_exit = internal global ptr @exynos_chipid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [74 x i8] c"exynos_chipid.description=Samsung Exynos ChipID controller and ASV driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [74 x i8] c"exynos_chipid.author=Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [59 x i8] c"exynos_chipid.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [61 x i8] c"exynos_chipid.author=Pankaj Dubey <pankaj.dubey@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author171 = internal constant [65 x i8] c"exynos_chipid.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [53 x i8] c"exynos_chipid.file=drivers/soc/samsung/exynos_chipid\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [26 x i8] c"exynos_chipid.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"exynos-chipid\00", align 1
@exynos_chipid_of_device_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_chipid_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_chipid_drv_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Samsung Exynos\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\013Unknown SoC\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\0A\00", align 1
@soc_ids = internal unnamed_addr constant [16 x %struct.exynos_soc_id] [%struct.exynos_soc_id { ptr @.str.7, i32 -481878016 }, %struct.exynos_soc_id { ptr @.str.8, i32 1126170624 }, %struct.exynos_soc_id { ptr @.str.8, i32 1126236160 }, %struct.exynos_soc_id { ptr @.str.9, i32 1126301696 }, %struct.exynos_soc_id { ptr @.str.10, i32 -465494016 }, %struct.exynos_soc_id { ptr @.str.11, i32 1129447424 }, %struct.exynos_soc_id { ptr @.str.12, i32 -450494464 }, %struct.exynos_soc_id { ptr @.str.13, i32 -448724992 }, %struct.exynos_soc_id { ptr @.str.14, i32 -448659456 }, %struct.exynos_soc_id { ptr @.str.15, i32 -448581632 }, %struct.exynos_soc_id { ptr @.str.16, i32 -448528384 }, %struct.exynos_soc_id { ptr @.str.17, i32 -448651264 }, %struct.exynos_soc_id { ptr @.str.18, i32 -415105024 }, %struct.exynos_soc_id { ptr @.str.19, i32 -410497024 }, %struct.exynos_soc_id { ptr @.str.20, i32 -477954048 }, %struct.exynos_soc_id { ptr @.str.21, i32 -1431830528 }], align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"EXYNOS3250\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"EXYNOS4210\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"EXYNOS4212\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"EXYNOS4412\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"EXYNOS5250\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"EXYNOS5260\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"EXYNOS5410\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"EXYNOS5420\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"EXYNOS5433\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"EXYNOS5440\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"EXYNOS5800\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"EXYNOS7420\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"EXYNOS7885\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"EXYNOS850\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"EXYNOSAUTOV9\00", align 1
@exynos4210_chipid_drv_data = internal constant %struct.exynos_chipid_variant { i32 0, i32 4, i32 0 }, align 4
@exynos850_chipid_drv_data = internal constant %struct.exynos_chipid_variant { i32 16, i32 20, i32 16 }, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_exynos_chipid_driver_exit, ptr @__initcall__kmod_exynos_chipid__166_203_exynos_chipid_driver_init6, ptr @exynos_chipid_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_chipid_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_chipid_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_chipid_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_chipid_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_chipid_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @device_node_to_regmap(ptr noundef %8) #5
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %9 to i32
  br label %85

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, -4096
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = call i32 @regmap_read(ptr noundef %9, i32 noundef %19, ptr noundef nonnull %2) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 4
  br label %28

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %22, %21 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %85

28:                                               ; preds = %24, %16
  %29 = phi i32 [ %25, %24 ], [ %17, %16 ]
  %30 = getelementptr inbounds %struct.exynos_chipid_variant, ptr %4, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %29, %31
  %33 = getelementptr inbounds %struct.exynos_chipid_variant, ptr %4, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %29, %34
  %36 = and i32 %35, 15
  %37 = shl i32 %32, 4
  %38 = and i32 %37, 240
  %39 = or i32 %38, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %40 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 1
  store ptr @.str.1, ptr %43, align 4
  %44 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #5
  %45 = call i32 @of_property_read_string(ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef nonnull %40) #5
  call void @of_node_put(ptr noundef %44) #5
  %46 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %39) #5
  %47 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  switch i32 %18, label %48 [
    i32 -481878016, label %65
    i32 1126170624, label %50
    i32 1126236160, label %51
    i32 1126301696, label %52
    i32 -465494016, label %53
    i32 1129447424, label %54
    i32 -450494464, label %55
    i32 -448724992, label %56
    i32 -448659456, label %57
    i32 -448581632, label %58
    i32 -448528384, label %59
    i32 -448651264, label %60
    i32 -415105024, label %61
    i32 -410497024, label %62
    i32 -477954048, label %63
    i32 -1431830528, label %64
  ]

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 4
  store ptr null, ptr %49, align 4
  br label %71

50:                                               ; preds = %42
  br label %65

51:                                               ; preds = %42
  br label %65

52:                                               ; preds = %42
  br label %65

53:                                               ; preds = %42
  br label %65

54:                                               ; preds = %42
  br label %65

55:                                               ; preds = %42
  br label %65

56:                                               ; preds = %42
  br label %65

57:                                               ; preds = %42
  br label %65

58:                                               ; preds = %42
  br label %65

59:                                               ; preds = %42
  br label %65

60:                                               ; preds = %42
  br label %65

61:                                               ; preds = %42
  br label %65

62:                                               ; preds = %42
  br label %65

63:                                               ; preds = %42
  br label %65

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %42
  %66 = phi i32 [ 0, %42 ], [ 1, %50 ], [ 2, %51 ], [ 3, %52 ], [ 4, %53 ], [ 5, %54 ], [ 6, %55 ], [ 7, %56 ], [ 8, %57 ], [ 9, %58 ], [ 10, %59 ], [ 11, %60 ], [ 12, %61 ], [ 13, %62 ], [ 14, %63 ], [ 15, %64 ]
  %67 = getelementptr [16 x %struct.exynos_soc_id], ptr @soc_ids, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 4
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %48
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %85

73:                                               ; preds = %65
  %74 = call ptr @soc_device_register(ptr noundef nonnull %40) #5
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = ptrtoint ptr %74 to i32
  br label %85

78:                                               ; preds = %73
  %79 = call i32 @exynos_asv_init(ptr noundef %3, ptr noundef %9) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %74, ptr %82, align 8
  %83 = load ptr, ptr %69, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %83, i32 noundef %18, i32 noundef %39) #6
  br label %85

84:                                               ; preds = %78
  call void @soc_device_unregister(ptr noundef %74) #5
  br label %85

85:                                               ; preds = %84, %81, %76, %71, %28, %26, %11, %1
  %86 = phi i32 [ %12, %11 ], [ %77, %76 ], [ %79, %84 ], [ 0, %81 ], [ -19, %71 ], [ -22, %1 ], [ -12, %28 ], [ %27, %26 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_chipid_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @soc_device_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_asv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
