; ModuleID = '/llk/IR/drivers/pinctrl/ti/pinctrl-ti-iodelay.c_pt.bc'
source_filename = "../drivers/pinctrl/ti/pinctrl-ti-iodelay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_iodelay_reg_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.ti_iodelay_device = type { ptr, i32, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, %struct.ti_iodelay_reg_values }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.ti_iodelay_reg_values = type { i16, i16, i16, i16, i16, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.ti_iodelay_cfg = type { i16, i16, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_iodelay_pingroup = type { ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_ti_iodelay__206_932_ti_iodelay_driver_init6 = internal global ptr @ti_iodelay_driver_init, section ".initcall6.init", align 4
@ti_iodelay_driver = internal global %struct.platform_driver { ptr @ti_iodelay_probe, ptr @ti_iodelay_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_iodelay_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_iodelay_driver_exit = internal global ptr @ti_iodelay_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [50 x i8] c"pinctrl_ti_iodelay.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [71 x i8] c"pinctrl_ti_iodelay.description=Pinconf driver for TI's IO Delay module\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [62 x i8] c"pinctrl_ti_iodelay.file=drivers/pinctrl/ti/pinctrl-ti-iodelay\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [34 x i8] c"pinctrl_ti_iodelay.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"ti-iodelay\00", align 1
@ti_iodelay_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-iodelay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_iodelay_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"No OF node\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"No DATA match\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Missing MEM resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Regmap MMIO init failed.\0A\00", align 1
@ti_iodelay_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @ti_iodelay_pin_dbg_show, ptr @ti_iodelay_dt_node_to_map, ptr null }, align 4
@ti_iodelay_pinctrl_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @ti_iodelay_pinconf_group_get, ptr @ti_iodelay_pinconf_group_set, ptr null, ptr @ti_iodelay_pinconf_group_dbg_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Invalid Coarse delay count (0) (reg=0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Invalid cdpe computed params = %d %d %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Invalid Fine delay count (0) (reg=0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Invalid fdpe(0) computed params = %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"%lx a: %i g: %i (%08x %08x %08x) %s \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"pinctrl-pin-array\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"invalid args_count for spec: %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"could not add functions for %pOFn %ux\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"%s could not find pingroup %i\0A\00", align 1
@__func__.ti_iodelay_get_pingroup = private unnamed_addr constant [24 x i8] c"ti_iodelay_get_pingroup\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Unsupported number of configurations %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Unsupported configuration\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Masking overflow of coarse elements %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Masking overflow of fine elements %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\0A\090x%08x = 0x%08x (%3d, %3d)\00", align 1
@dra7_iodelay_data = internal global %struct.ti_iodelay_reg_data { i32 258048, i32 41, i32 1024, i32 1, i32 0, i32 992, i32 31, i32 20, i32 65535, i32 24, i32 -65536, i32 65535, i32 28, i32 -65536, i32 65535, i32 44, i32 65535, i32 43690, i32 43691, i32 48, i32 3, ptr @dra7_iodelay_regmap_config }, align 4
@dra7_iodelay_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3356, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_ti_iodelay_driver_exit, ptr @__initcall__kmod_pinctrl_ti_iodelay__206_932_ti_iodelay_driver_init6, ptr @ti_iodelay_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_iodelay_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_iodelay_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_iodelay_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_iodelay_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_iodelay_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_node_get(ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %219

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @ti_iodelay_of_match, ptr noundef %3) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %219

13:                                               ; preds = %9
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 92, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %219, label %16

16:                                               ; preds = %13
  store ptr %3, ptr %14, align 4
  %17 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 7
  store ptr %18, ptr %19, align 4
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  br label %219

23:                                               ; preds = %16
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %20) #7
  %27 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %26 to i32
  br label %219

31:                                               ; preds = %23
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %32, i32 0, i32 21
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %26, ptr noundef %34, ptr noundef null, ptr noundef null) #7
  %36 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %219

41:                                               ; preds = %31
  %42 = load ptr, ptr %19, align 4
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %45 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %46, i32 noundef %48, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %158

53:                                               ; preds = %41
  %54 = load ptr, ptr %36, align 4
  %55 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = call i32 @regmap_read(ptr noundef %54, i32 noundef %56, ptr noundef nonnull %2) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %158

59:                                               ; preds = %53
  %60 = load i32, ptr %2, align 4
  %61 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, %60
  %64 = call i32 @llvm.cttz.i32(i32 %62, i1 false) #7, !range !9
  %65 = lshr i32 %63, %64
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 4
  store i16 %66, ptr %67, align 4
  %68 = load ptr, ptr %36, align 4
  %69 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = call i32 @regmap_read(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %2) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %158

73:                                               ; preds = %59
  %74 = load i32, ptr %2, align 4
  %75 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %74
  %78 = call i32 @llvm.cttz.i32(i32 %76, i1 false) #7, !range !9
  %79 = lshr i32 %77, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %44, align 4
  %81 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, %74
  %84 = call i32 @llvm.cttz.i32(i32 %82, i1 false) #7, !range !9
  %85 = lshr i32 %83, %84
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 1
  store i16 %86, ptr %87, align 2
  %88 = icmp eq i16 %86, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.6, i32 noundef %74) #8
  br label %158

90:                                               ; preds = %73
  %91 = load i16, ptr %67, align 4
  %92 = zext i16 %91 to i64
  %93 = and i32 %79, 65535
  %94 = mul nuw nsw i32 %93, 10
  %95 = zext i32 %94 to i64
  %96 = mul nuw nsw i64 %92, %95
  %97 = shl i32 %85, 1
  %98 = and i32 %97, 131070
  %99 = mul nuw nsw i32 %98, 88
  %100 = zext i32 %99 to i64
  %101 = call i64 @div64_u64(i64 noundef %96, i64 noundef %100) #7
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 5
  store i32 %102, ptr %103, align 4
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %90
  %106 = load i16, ptr %67, align 4
  %107 = zext i16 %106 to i32
  %108 = load i16, ptr %44, align 4
  %109 = zext i16 %108 to i32
  %110 = load i16, ptr %87, align 2
  %111 = zext i16 %110 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.7, i32 noundef %107, i32 noundef %109, i32 noundef %111) #8
  br label %158

112:                                              ; preds = %90
  %113 = load ptr, ptr %36, align 4
  %114 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 12
  %115 = load i32, ptr %114, align 4
  %116 = call i32 @regmap_read(ptr noundef %113, i32 noundef %115, ptr noundef nonnull %2) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %158

118:                                              ; preds = %112
  %119 = load i32, ptr %2, align 4
  %120 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 14
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, %119
  %123 = call i32 @llvm.cttz.i32(i32 %121, i1 false) #7, !range !9
  %124 = lshr i32 %122, %123
  %125 = trunc i32 %124 to i16
  %126 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 2
  store i16 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %42, i32 0, i32 13
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, %119
  %130 = call i32 @llvm.cttz.i32(i32 %128, i1 false) #7, !range !9
  %131 = lshr i32 %129, %130
  %132 = trunc i32 %131 to i16
  %133 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 3
  store i16 %132, ptr %133, align 2
  %134 = icmp eq i16 %132, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.8, i32 noundef %119) #8
  br label %158

136:                                              ; preds = %118
  %137 = load i16, ptr %67, align 4
  %138 = zext i16 %137 to i64
  %139 = and i32 %124, 65535
  %140 = mul nuw nsw i32 %139, 10
  %141 = zext i32 %140 to i64
  %142 = mul nuw nsw i64 %138, %141
  %143 = shl i32 %131, 1
  %144 = and i32 %143, 131070
  %145 = mul nuw nsw i32 %144, 264
  %146 = zext i32 %145 to i64
  %147 = call i64 @div64_u64(i64 noundef %142, i64 noundef %146) #7
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 8, i32 6
  store i32 %148, ptr %149, align 4
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %136
  %152 = load i16, ptr %67, align 4
  %153 = zext i16 %152 to i32
  %154 = load i16, ptr %126, align 4
  %155 = zext i16 %154 to i32
  %156 = load i16, ptr %133, align 2
  %157 = zext i16 %156 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.9, i32 noundef %153, i32 noundef %155, i32 noundef %157) #8
  br label %158

158:                                              ; preds = %151, %135, %112, %105, %89, %59, %53, %41
  %159 = phi i32 [ %116, %112 ], [ %71, %59 ], [ %57, %53 ], [ %51, %41 ], [ -22, %89 ], [ -22, %105 ], [ -22, %135 ], [ -22, %151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %219

160:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %161 = load ptr, ptr %19, align 4
  %162 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %161, i32 0, i32 21
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.regmap_config, ptr %163, i32 0, i32 19
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %161, i32 0, i32 19
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 %165, %167
  %169 = getelementptr inbounds %struct.regmap_config, ptr %163, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = udiv i32 %168, %170
  %172 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %161, i32 0, i32 20
  %173 = load i32, ptr %172, align 4
  %174 = udiv i32 %171, %173
  %175 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %174, i32 12) #7
  %176 = extractvalue { i32, i1 } %175, 1
  br i1 %176, label %177, label %179, !prof !10

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 6
  store ptr null, ptr %178, align 4
  br label %219

179:                                              ; preds = %160
  %180 = extractvalue { i32, i1 } %175, 0
  %181 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %180, i32 noundef 3520) #7
  %182 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 6
  store ptr %181, ptr %182, align 4
  %183 = icmp eq ptr %181, null
  br i1 %183, label %219, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5, i32 1
  store ptr %181, ptr %185, align 4
  %186 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5, i32 2
  store i32 %174, ptr %186, align 4
  %187 = icmp ugt i32 %173, %171
  br i1 %187, label %199, label %188

188:                                              ; preds = %184
  store i32 0, ptr %181, align 4
  %189 = icmp eq i32 %174, 1
  br i1 %189, label %199, label %190

190:                                              ; preds = %188
  %191 = getelementptr %struct.pinctrl_pin_desc, ptr %181, i32 1
  store i32 1, ptr %191, align 4
  %192 = icmp eq i32 %174, 2
  br i1 %192, label %199, label %193

193:                                              ; preds = %193, %190
  %194 = phi i32 [ %197, %193 ], [ 2, %190 ]
  %195 = load ptr, ptr %182, align 4
  %196 = getelementptr %struct.pinctrl_pin_desc, ptr %195, i32 %194
  store i32 %194, ptr %196, align 4
  %197 = add nuw nsw i32 %194, 1
  %198 = icmp eq i32 %197, %174
  br i1 %198, label %199, label %193

199:                                              ; preds = %193, %190, %188, %184
  %200 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5
  %201 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5, i32 3
  store ptr @ti_iodelay_pinctrl_ops, ptr %201, align 4
  %202 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5, i32 5
  store ptr @ti_iodelay_pinctrl_pinconf_ops, ptr %202, align 4
  %203 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = load ptr, ptr %3, align 4
  br label %208

208:                                              ; preds = %206, %199
  %209 = phi ptr [ %207, %206 ], [ %204, %199 ]
  store ptr %209, ptr %200, align 4
  %210 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 5, i32 6
  store ptr null, ptr %210, align 4
  %211 = getelementptr inbounds %struct.ti_iodelay_device, ptr %14, i32 0, i32 4
  %212 = call i32 @pinctrl_register_and_init(ptr noundef %200, ptr noundef %3, ptr noundef nonnull %14, ptr noundef %211) #7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %208
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %219

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %216, align 8
  %217 = load ptr, ptr %211, align 4
  %218 = call i32 @pinctrl_enable(ptr noundef %217) #7
  br label %221

219:                                              ; preds = %214, %179, %177, %158, %38, %29, %22, %13, %12, %8
  %220 = phi i32 [ %30, %29 ], [ %40, %38 ], [ %212, %214 ], [ -19, %22 ], [ -22, %12 ], [ -22, %8 ], [ -12, %13 ], [ %159, %158 ], [ -12, %179 ], [ -12, %177 ]
  call void @of_node_put(ptr noundef %6) #7
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi i32 [ %220, %219 ], [ %218, %215 ]
  ret i32 %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_iodelay_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ti_iodelay_device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @pinctrl_unregister(ptr noundef nonnull %7) #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.ti_iodelay_device, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ti_iodelay_device, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %12, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %12, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %12, i32 0, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %22

22:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_iodelay_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.ti_iodelay_device, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap_config, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %2
  %15 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %9, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %9, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds %struct.ti_iodelay_device, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.pinctrl_pin_desc, ptr %22, i32 %2, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ti_iodelay_device, ptr %7, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef %20, ptr noundef nonnull %4) #7
  %28 = load ptr, ptr %25, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.regmap_config, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %20
  %33 = call i32 @regmap_read(ptr noundef %28, i32 noundef %32, ptr noundef nonnull %5) #7
  %34 = load ptr, ptr %25, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.regmap_config, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 1
  %39 = add i32 %38, %20
  %40 = call i32 @regmap_read(ptr noundef %34, i32 noundef %39, ptr noundef nonnull %6) #7
  %41 = getelementptr inbounds %struct.ti_iodelay_device, ptr %7, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq ptr %24, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %24, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %24, i32 0, i32 2
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  br label %51

51:                                               ; preds = %44, %3
  %52 = phi i32 [ %47, %44 ], [ -1, %3 ]
  %53 = phi i32 [ %50, %44 ], [ -1, %3 ]
  %54 = add i32 %42, %20
  %55 = load i32, ptr %4, align 4
  %56 = load i32, ptr %5, align 4
  %57 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %54, i32 noundef %52, i32 noundef %53, i32 noundef %55, i32 noundef %56, i32 noundef %57, ptr noundef nonnull @.str) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_iodelay_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %135, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @pinctrl_count_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %135, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 4
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 28, i32 noundef 3520) #7
  store ptr %13, ptr %2, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %135, label %15

15:                                               ; preds = %11
  store i32 0, ptr %3, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 12, i32 noundef 3520) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %131, label %19

19:                                               ; preds = %15
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %128, label %22, !prof !10

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 4
  %24 = extractvalue { i32, i1 } %20, 0
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %24, i32 noundef 3520) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %128, label %27

27:                                               ; preds = %22
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 6) #7
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %125, label %30, !prof !10

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 4
  %32 = extractvalue { i32, i1 } %28, 0
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef %32, i32 noundef 3520) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %125, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %9, 0
  br i1 %36, label %104, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2
  %40 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2, i32 2
  br label %42

42:                                               ; preds = %97, %37
  %43 = phi i32 [ 0, %37 ], [ %102, %97 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !8
  %44 = call i32 @pinctrl_parse_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %43, ptr noundef nonnull %5) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %42
  %47 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %95, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ti_iodelay_device, ptr %47, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %38, align 4
  %53 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %51, i32 0, i32 20
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.13, i32 noundef %52) #8
  br label %95

58:                                               ; preds = %49
  %59 = load i32, ptr %39, align 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr %struct.ti_iodelay_cfg, ptr %33, i32 %43
  store i16 %60, ptr %61, align 2
  %62 = load i32, ptr %40, align 4
  %63 = trunc i32 %62 to i16
  %64 = getelementptr %struct.ti_iodelay_cfg, ptr %33, i32 %43, i32 1
  store i16 %63, ptr %64, align 2
  %65 = load i32, ptr %41, align 4
  %66 = trunc i32 %65 to i16
  %67 = getelementptr %struct.ti_iodelay_cfg, ptr %33, i32 %43, i32 2
  store i16 %66, ptr %67, align 2
  %68 = and i32 %59, 65535
  %69 = load ptr, ptr %50, align 4
  %70 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %69, i32 0, i32 21
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.regmap_config, ptr %71, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %73, %68
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.10, i32 noundef %68, i32 noundef %73) #8
  %77 = load i16, ptr %61, align 2
  br label %91

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %69, i32 0, i32 19
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %68, %80
  %82 = getelementptr inbounds %struct.regmap_config, ptr %71, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = udiv i32 %81, %83
  %85 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %69, i32 0, i32 20
  %86 = load i32, ptr %85, align 4
  %87 = udiv i32 %84, %86
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = trunc i32 %59 to i16
  br label %91

91:                                               ; preds = %89, %75
  %92 = phi i16 [ %77, %75 ], [ %90, %89 ]
  %93 = load ptr, ptr %47, align 4
  %94 = zext i16 %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %94) #8
  br label %95

95:                                               ; preds = %91, %56, %46, %42
  %96 = phi i32 [ -19, %91 ], [ -22, %56 ], [ -22, %46 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  br label %122

97:                                               ; preds = %78
  %98 = getelementptr i32, ptr %25, i32 %43
  store i32 %87, ptr %98, align 4
  %99 = getelementptr inbounds %struct.ti_iodelay_device, ptr %47, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.pinctrl_pin_desc, ptr %100, i32 %87, i32 2
  store ptr %61, ptr %101, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %102 = add nuw nsw i32 %43, 1
  %103 = icmp eq i32 %102, %9
  br i1 %103, label %104, label %42

104:                                              ; preds = %97, %35
  store ptr %33, ptr %17, align 4
  %105 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %17, i32 0, i32 1
  store i32 %9, ptr %105, align 4
  %106 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %17, i32 0, i32 2
  store i32 127, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ti_iodelay_device, ptr %6, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %1, align 4
  %110 = call i32 @pinctrl_generic_add_group(ptr noundef %108, ptr noundef %109, ptr noundef nonnull %25, i32 noundef %9, ptr noundef nonnull %17) #7
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %104
  %113 = load ptr, ptr %2, align 4
  %114 = getelementptr inbounds %struct.pinctrl_map, ptr %113, i32 0, i32 2
  store i32 4, ptr %114, align 4
  %115 = load ptr, ptr %1, align 4
  %116 = load ptr, ptr %2, align 4
  %117 = getelementptr inbounds %struct.pinctrl_map, ptr %116, i32 0, i32 4
  store ptr %115, ptr %117, align 4
  %118 = load ptr, ptr %2, align 4
  %119 = getelementptr inbounds %struct.pinctrl_map, ptr %118, i32 0, i32 4, i32 0, i32 1
  store ptr %106, ptr %119, align 4
  %120 = load ptr, ptr %2, align 4
  %121 = getelementptr inbounds %struct.pinctrl_map, ptr %120, i32 0, i32 4, i32 0, i32 2
  store i32 1, ptr %121, align 4
  store i32 1, ptr %3, align 4
  br label %135

122:                                              ; preds = %104, %95
  %123 = phi i32 [ %110, %104 ], [ %96, %95 ]
  %124 = load ptr, ptr %6, align 4
  call void @devm_kfree(ptr noundef %124, ptr noundef nonnull %33) #7
  br label %125

125:                                              ; preds = %122, %30, %27
  %126 = phi i32 [ %123, %122 ], [ -12, %30 ], [ -12, %27 ]
  %127 = load ptr, ptr %6, align 4
  call void @devm_kfree(ptr noundef %127, ptr noundef nonnull %25) #7
  br label %128

128:                                              ; preds = %125, %22, %19
  %129 = phi i32 [ %126, %125 ], [ -12, %22 ], [ -12, %19 ]
  %130 = load ptr, ptr %6, align 4
  call void @devm_kfree(ptr noundef %130, ptr noundef nonnull %17) #7
  br label %131

131:                                              ; preds = %128, %15
  %132 = phi i32 [ %129, %128 ], [ -12, %15 ]
  %133 = load ptr, ptr %6, align 4
  %134 = load ptr, ptr %2, align 4
  call void @devm_kfree(ptr noundef %133, ptr noundef %134) #7
  br label %135

135:                                              ; preds = %131, %112, %11, %8, %4
  %136 = phi i32 [ %132, %131 ], [ 0, %112 ], [ -22, %4 ], [ %9, %8 ], [ -12, %11 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_count_index_with_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_parse_index_with_args(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_iodelay_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ti_iodelay_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @pinctrl_generic_get_group(ptr noundef %6, i32 noundef %1) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ti_iodelay_get_pingroup, i32 noundef %1) #8
  br label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.group_desc, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %15, %11, %9
  %19 = phi i32 [ 0, %15 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_iodelay_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @pinctrl_generic_get_group(ptr noundef %8, i32 noundef %1) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ti_iodelay_get_pingroup, i32 noundef %1) #8
  br label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.group_desc, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %15, %13 ], [ null, %11 ]
  %18 = icmp eq i32 %3, 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %3) #8
  br label %127

20:                                               ; preds = %16
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 127
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %17, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %127

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 7
  %29 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 8, i32 5
  %30 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 8, i32 6
  %31 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 3
  br label %37

32:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #8
  br label %127

33:                                               ; preds = %106
  %34 = add nuw nsw i32 %38, 1
  %35 = load i32, ptr %24, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %127

37:                                               ; preds = %33, %27
  %38 = phi i32 [ 0, %27 ], [ %34, %33 ]
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr %struct.ti_iodelay_cfg, ptr %39, i32 %38
  %41 = load ptr, ptr %28, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr %struct.ti_iodelay_cfg, ptr %39, i32 %38, i32 2
  %44 = load i16, ptr %43, align 2
  %45 = freeze i16 %44
  %46 = udiv i16 %45, 920
  %47 = zext i16 %46 to i32
  %48 = mul i16 %46, 920
  %49 = sub i16 %45, %48
  %50 = udiv i16 %49, 6
  %51 = zext i16 %50 to i32
  %52 = getelementptr %struct.ti_iodelay_cfg, ptr %39, i32 %38, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i32, ptr %29, align 4
  %56 = freeze i32 %54
  %57 = freeze i32 %55
  %58 = udiv i32 %56, %57
  %59 = mul i32 %58, %57
  %60 = sub i32 %56, %59
  %61 = mul nuw nsw i32 %60, 10
  %62 = load i32, ptr %30, align 4
  %63 = udiv i32 %61, %62
  %64 = add nuw nsw i32 %58, %47
  %65 = add nuw nsw i32 %63, %51
  %66 = udiv i32 %65, 10
  %67 = icmp ugt i32 %65, 229
  br i1 %67, label %68, label %78

68:                                               ; preds = %37
  %69 = mul i32 %64, %55
  %70 = mul i32 %66, %62
  %71 = add i32 %70, %69
  %72 = freeze i32 %71
  %73 = freeze i32 %55
  %74 = udiv i32 %72, %73
  %75 = mul i32 %74, %73
  %76 = sub i32 %72, %75
  %77 = udiv i32 %76, %62
  br label %78

78:                                               ; preds = %68, %37
  %79 = phi i32 [ %74, %68 ], [ %64, %37 ]
  %80 = phi i32 [ %77, %68 ], [ %66, %37 ]
  %81 = load i32, ptr %41, align 4
  %82 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %41, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %41, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @llvm.cttz.i32(i32 %85, i1 false) #7, !range !9
  %87 = shl i32 %79, %86
  %88 = xor i32 %85, -1
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.18, i32 noundef %87) #8
  %92 = load i32, ptr %84, align 4
  %93 = and i32 %92, %87
  br label %94

94:                                               ; preds = %91, %78
  %95 = phi i32 [ %93, %91 ], [ %87, %78 ]
  %96 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %41, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @llvm.cttz.i32(i32 %97, i1 false) #7, !range !9
  %99 = shl i32 %80, %98
  %100 = xor i32 %97, -1
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.19, i32 noundef %99) #8
  %104 = load i32, ptr %96, align 4
  %105 = and i32 %104, %99
  br label %106

106:                                              ; preds = %103, %94
  %107 = phi i32 [ %105, %103 ], [ %99, %94 ]
  %108 = tail call i32 @llvm.cttz.i32(i32 %81, i1 false) #7, !range !9
  %109 = or i32 %85, %81
  %110 = or i32 %109, %97
  %111 = shl i32 %83, %108
  %112 = or i32 %95, %111
  %113 = or i32 %112, %107
  %114 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %41, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = or i32 %110, %115
  %117 = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %41, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = tail call i32 @llvm.cttz.i32(i32 %115, i1 false) #7, !range !9
  %120 = shl i32 %118, %119
  %121 = or i32 %113, %120
  %122 = load ptr, ptr %31, align 4
  %123 = load i16, ptr %40, align 2
  %124 = zext i16 %123 to i32
  %125 = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef %124, i32 noundef %116, i32 noundef %121, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %33, label %127

127:                                              ; preds = %106, %33, %32, %23, %19
  %128 = phi i32 [ -22, %19 ], [ -22, %32 ], [ 0, %23 ], [ -524, %106 ], [ 0, %33 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_iodelay_pinconf_group_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @pinctrl_generic_get_group(ptr noundef %7, i32 noundef %2) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ti_iodelay_get_pingroup, i32 noundef %2) #8
  br label %42

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.group_desc, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ti_iodelay_device, ptr %5, i32 0, i32 3
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %39, %22 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr %struct.ti_iodelay_cfg, ptr %24, i32 %23
  %26 = load ptr, ptr %21, align 4
  %27 = load i16, ptr %25, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %4) #7
  %30 = load i16, ptr %25, align 2
  %31 = zext i16 %30 to i32
  %32 = load i32, ptr %4, align 4
  %33 = getelementptr %struct.ti_iodelay_cfg, ptr %24, i32 %23, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr %struct.ti_iodelay_cfg, ptr %24, i32 %23, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %31, i32 noundef %32, i32 noundef %35, i32 noundef %38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %39 = add nuw nsw i32 %23, 1
  %40 = load i32, ptr %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %22, label %42

42:                                               ; preds = %22, %16, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #1

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
