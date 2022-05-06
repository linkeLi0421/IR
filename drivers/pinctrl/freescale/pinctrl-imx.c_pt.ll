; ModuleID = '/llk/IR/drivers/pinctrl/freescale/pinctrl-imx.c_pt.bc'
source_filename = "../drivers/pinctrl/freescale/pinctrl-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pinctrl_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pinctrl_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pinctrl_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.imx_pinctrl_soc_info = type { ptr, i32, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.imx_pin = type { i32, %union.anon.63 }
%union.anon.63 = type { %struct.imx_pin_mmio }
%struct.imx_pin_mmio = type { i32, i16, i32, i32 }
%struct.imx_pin_reg = type { i16, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.imx_cfg_params_decode = type { i32, i32, i8, i8 }

@imx_pmx_ops = dso_local global %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @imx_pmx_set, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@__const.imx_pinctrl_probe.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"wrong pinctrl info\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,input-sel\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"iomuxc fsl,input-sel property not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"iomuxc input select base address not found\0A\00", align 1
@imx_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @imx_pin_dbg_show, ptr @imx_dt_node_to_map, ptr @imx_dt_free_map }, align 4
@imx_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @imx_pinconf_get, ptr @imx_pinconf_set, ptr null, ptr null, ptr @imx_pinconf_dbg_show, ptr @imx_pinconf_group_dbg_show, ptr null }, align 4
@imx_pinctrl_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&ipctl->mutex\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"could not register IMX pinctrl driver\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"fail to probe dt properties\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"initialized IMX pinctrl driver\0A\00", align 1
@__kstrtab_imx_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pinctrl_probe to i32), ptr @__kstrtab_imx_pinctrl_probe, ptr @__kstrtabns_imx_pinctrl_probe }, section "___ksymtab_gpl+imx_pinctrl_probe", align 4
@imx_pinctrl_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_imx_pinctrl_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pinctrl_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pinctrl_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pinctrl_pm_ops to i32), ptr @__kstrtab_imx_pinctrl_pm_ops, ptr @__kstrtabns_imx_pinctrl_pm_ops }, section "___ksymtab_gpl+imx_pinctrl_pm_ops", align 4
@__UNIQUE_ID_author206 = internal constant [55 x i8] c"pinctrl_imx.author=Dong Aisheng <aisheng.dong@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [55 x i8] c"pinctrl_imx.description=NXP i.MX common pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file208 = internal constant [55 x i8] c"pinctrl_imx.file=drivers/pinctrl/freescale/pinctrl-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [27 x i8] c"pinctrl_imx.license=GPL v2\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Pin(%s) does not support config function\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to get %s pinconf\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"  %s: 0x%lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"no functions defined\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"fsl,pins\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"no groups defined in %pOF\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"no fsl,pins and pins property in node %pOF\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Invalid fsl,pins or pins property in node %pOF\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"drivers/pinctrl/freescale/pinctrl-imx.c\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__ksymtab_imx_pinctrl_pm_ops, ptr @__ksymtab_imx_pinctrl_probe], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.imx_pinctrl, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %2) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %115, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %1) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %115, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.group_desc, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %115, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.group_desc, ptr %7, i32 0, i32 3
  %19 = getelementptr inbounds %struct.imx_pinctrl, ptr %4, i32 0, i32 5
  %20 = getelementptr inbounds %struct.imx_pinctrl, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.imx_pinctrl, ptr %4, i32 0, i32 3
  br label %22

22:                                               ; preds = %112, %16
  %23 = phi i32 [ 0, %16 ], [ %113, %112 ]
  %24 = load i32, ptr %17, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %22
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr %struct.imx_pin, ptr %28, i32 %23
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr %struct.imx_pin, ptr %28, i32 %23, i32 1
  %32 = load i32, ptr %29, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr %struct.imx_pin_reg, ptr %33, i32 %32
  %35 = load i16, ptr %34, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp eq i16 %35, -1
  br i1 %37, label %112, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %30, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr i8, ptr %44, i32 %36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %47 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %30, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = load i32, ptr %31, align 4
  %52 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %30, i32 0, i32 5
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = shl i32 %51, %54
  %56 = or i32 %55, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %20, align 4
  %58 = load i16, ptr %34, align 2
  %59 = sext i16 %58 to i32
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #9, !srcloc !11
  br label %67

61:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %62 = load i32, ptr %31, align 4
  %63 = load ptr, ptr %20, align 4
  %64 = load i16, ptr %34, align 2
  %65 = sext i16 %64 to i32
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #9, !srcloc !11
  br label %67

67:                                               ; preds = %61, %43
  %68 = getelementptr %struct.imx_pin, ptr %28, i32 %23, i32 1, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, -16777217
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = lshr i32 %69, 8
  %73 = lshr i32 %69, 16
  %74 = and i32 %72, 255
  %75 = shl nsw i32 -1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %73, 255
  %78 = shl i32 %76, %77
  %79 = load ptr, ptr %20, align 4
  %80 = getelementptr %struct.imx_pin, ptr %28, i32 %23, i32 1, i32 0, i32 1
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %79, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %85 = xor i32 %78, -1
  %86 = and i32 %84, %85
  %87 = and i32 %69, 255
  %88 = shl i32 %87, %77
  %89 = or i32 %86, %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %20, align 4
  %91 = load i16, ptr %80, align 4
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %90, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %89) #9, !srcloc !11
  br label %112

94:                                               ; preds = %67
  %95 = getelementptr %struct.imx_pin, ptr %28, i32 %23, i32 1, i32 0, i32 1
  %96 = load i16, ptr %95, align 4
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %21, align 4
  %100 = icmp eq ptr %99, null
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %101 = load i32, ptr %68, align 4
  br i1 %100, label %107, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %21, align 4
  %104 = load i16, ptr %95, align 4
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %103, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %101) #9, !srcloc !11
  br label %112

107:                                              ; preds = %98
  %108 = load ptr, ptr %20, align 4
  %109 = load i16, ptr %95, align 4
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %108, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %101) #9, !srcloc !11
  br label %112

112:                                              ; preds = %107, %102, %94, %71, %27, %22
  %113 = add nuw i32 %23, 1
  %114 = icmp eq i32 %113, %14
  br i1 %114, label %115, label %22

115:                                              ; preds = %112, %12, %9, %3
  %116 = phi i32 [ -22, %3 ], [ -22, %9 ], [ 0, %12 ], [ 0, %112 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_pinctrl_probe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.regmap_config, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %4, ptr noundef nonnull align 4 dereferenceable(172) @__const.imx_pinctrl_probe.config, i32 172, i1 false)
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  br label %124

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %19) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @regmap_attach_dev(ptr noundef %5, ptr noundef %22, ptr noundef nonnull %4) #9
  br label %26

26:                                               ; preds = %24, %21, %17
  %27 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 48, i32 noundef 3520) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %124, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %29
  %35 = load i32, ptr %13, align 4
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 4) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %38, label %40, !prof !15

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 5
  store ptr null, ptr %39, align 4
  br label %124

40:                                               ; preds = %34
  %41 = extractvalue { i32, i1 } %36, 0
  %42 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %41, i32 noundef 3264) #9
  %43 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 5
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %124, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  store i16 -1, ptr %42, align 2
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr %struct.imx_pin_reg, ptr %49, i32 0, i32 1
  store i16 -1, ptr %50, align 2
  %51 = load i32, ptr %13, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %53, %48
  %54 = phi i32 [ %59, %53 ], [ 1, %48 ]
  %55 = load ptr, ptr %43, align 4
  %56 = getelementptr %struct.imx_pin_reg, ptr %55, i32 %54
  store i16 -1, ptr %56, align 2
  %57 = load ptr, ptr %43, align 4
  %58 = getelementptr %struct.imx_pin_reg, ptr %57, i32 %54, i32 1
  store i16 -1, ptr %58, align 2
  %59 = add nuw i32 %54, 1
  %60 = load i32, ptr %13, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %53, label %62

62:                                               ; preds = %53, %48, %45
  %63 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %64 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 2
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = ptrtoint ptr %63 to i32
  br label %124

68:                                               ; preds = %62
  %69 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !16
  %72 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %73 = icmp ne i32 %72, 0
  %74 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %75 = icmp eq ptr %74, null
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #10
  br label %124

78:                                               ; preds = %71
  %79 = call ptr @of_iomap(ptr noundef nonnull %74, i32 noundef 0) #9
  %80 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 3
  store ptr %79, ptr %80, align 4
  call void @of_node_put(ptr noundef nonnull %74) #9
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #10
  br label %124

83:                                               ; preds = %78, %68, %29
  %84 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 44, i32 noundef 3520) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %124, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load ptr, ptr %5, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi ptr [ %91, %90 ], [ %88, %86 ]
  store ptr %93, ptr %84, align 4
  %94 = load ptr, ptr %1, align 4
  %95 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 1
  store ptr %94, ptr %95, align 4
  %96 = load i32, ptr %13, align 4
  %97 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 2
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 3
  store ptr @imx_pctrl_ops, ptr %98, align 4
  %99 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 4
  store ptr @imx_pmx_ops, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 5
  store ptr @imx_pinconf_ops, ptr %100, align 4
  %101 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 6
  store ptr null, ptr %101, align 4
  %102 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 8
  store ptr %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 8
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.pinctrl_desc, ptr %84, i32 0, i32 7
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 12
  %109 = load ptr, ptr %108, align 4
  store ptr %109, ptr getelementptr inbounds (%struct.pinmux_ops, ptr @imx_pmx_ops, i32 0, i32 8), align 4
  %110 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 7
  call void @__mutex_init(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull @imx_pinctrl_probe.__key) #9
  %111 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 4
  store ptr %1, ptr %111, align 4
  store ptr %5, ptr %27, align 4
  %112 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %27, ptr %112, align 8
  %113 = getelementptr inbounds %struct.imx_pinctrl, ptr %27, i32 0, i32 1
  %114 = call i32 @devm_pinctrl_register_and_init(ptr noundef %5, ptr noundef nonnull %84, ptr noundef nonnull %27, ptr noundef %113) #9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #10
  br label %124

117:                                              ; preds = %92
  %118 = call fastcc i32 @imx_pinctrl_probe_dt(ptr noundef %0, ptr noundef nonnull %27)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #10
  br label %124

121:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.8) #10
  %122 = load ptr, ptr %113, align 4
  %123 = call i32 @pinctrl_enable(ptr noundef %122) #9
  br label %124

124:                                              ; preds = %121, %120, %116, %83, %82, %77, %66, %40, %38, %26, %16
  %125 = phi i32 [ %114, %116 ], [ %118, %120 ], [ %123, %121 ], [ %67, %66 ], [ -12, %82 ], [ -22, %77 ], [ -22, %16 ], [ -12, %26 ], [ -12, %40 ], [ -12, %83 ], [ -12, %38 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #9
  ret i32 %125
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_pinctrl_probe_dt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %27, %9
  %13 = phi ptr [ %28, %27 ], [ %10, %9 ]
  %14 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @of_node_put(ptr noundef nonnull %13) #9
  br label %42

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef null) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %25, %24 ], [ %18, %17 ]
  %22 = tail call ptr @of_find_property(ptr noundef nonnull %21, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = tail call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef nonnull %21) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20

27:                                               ; preds = %24, %17
  %28 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %13) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %12

30:                                               ; preds = %20
  tail call void @of_node_put(ptr noundef nonnull %21) #9
  tail call void @of_node_put(ptr noundef nonnull %13) #9
  %31 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %36, %33 ], [ 0, %30 ]
  %35 = phi ptr [ %37, %33 ], [ %31, %30 ]
  %36 = add i32 %34, 1
  %37 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %35) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33

39:                                               ; preds = %33
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  br label %99

42:                                               ; preds = %39, %27, %16, %9
  %43 = phi i1 [ false, %39 ], [ true, %16 ], [ true, %9 ], [ true, %27 ]
  %44 = phi i32 [ %36, %39 ], [ 1, %16 ], [ 1, %9 ], [ 1, %27 ]
  %45 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 7
  %46 = getelementptr inbounds %struct.pinctrl_dev, ptr %7, i32 0, i32 5
  br label %47

47:                                               ; preds = %51, %42
  %48 = phi i32 [ 0, %42 ], [ %53, %51 ]
  %49 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %99, label %51

51:                                               ; preds = %47
  tail call void @mutex_lock(ptr noundef %45) #9
  %52 = tail call i32 @radix_tree_insert(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %49) #9
  tail call void @mutex_unlock(ptr noundef %45) #9
  %53 = add nuw i32 %48, 1
  %54 = icmp eq i32 %53, %44
  br i1 %54, label %55, label %47

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.pinctrl_dev, ptr %7, i32 0, i32 6
  store i32 %44, ptr %56, align 4
  %57 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 6
  store i32 0, ptr %57, align 4
  br i1 %43, label %58, label %67

58:                                               ; preds = %55
  %59 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %61, %58
  %62 = phi i32 [ %64, %61 ], [ 0, %58 ]
  %63 = phi ptr [ %65, %61 ], [ %59, %58 ]
  %64 = add i32 %62, 1
  %65 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %63) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %87, label %61

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.pinctrl_dev, ptr %7, i32 0, i32 4
  store i32 0, ptr %68, align 4
  %69 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %81, %67
  %72 = phi ptr [ %85, %81 ], [ %69, %67 ]
  %73 = tail call ptr @of_get_next_child(ptr noundef nonnull %72, ptr noundef null) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %75, %71
  %76 = phi i32 [ %78, %75 ], [ 0, %71 ]
  %77 = phi ptr [ %79, %75 ], [ %73, %71 ]
  %78 = add i32 %76, 1
  %79 = tail call ptr @of_get_next_child(ptr noundef nonnull %72, ptr noundef nonnull %77) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %75

81:                                               ; preds = %75, %71
  %82 = phi i32 [ 0, %71 ], [ %78, %75 ]
  %83 = load i32, ptr %68, align 4
  %84 = add i32 %83, %82
  store i32 %84, ptr %68, align 4
  %85 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %72) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %71

87:                                               ; preds = %61, %58
  %88 = phi i32 [ 0, %58 ], [ %64, %61 ]
  %89 = getelementptr inbounds %struct.pinctrl_dev, ptr %7, i32 0, i32 4
  store i32 %88, ptr %89, align 4
  tail call fastcc void @imx_pinctrl_parse_functions(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0)
  br label %99

90:                                               ; preds = %81, %67
  %91 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %93, %90
  %94 = phi i32 [ %96, %93 ], [ 0, %90 ]
  %95 = phi ptr [ %97, %93 ], [ %91, %90 ]
  %96 = add i32 %94, 1
  tail call fastcc void @imx_pinctrl_parse_functions(ptr noundef nonnull %95, ptr noundef %1, i32 noundef %94)
  %97 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %95) #9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %93

99:                                               ; preds = %93, %90, %87, %47, %41, %2
  %100 = phi i32 [ -22, %41 ], [ -19, %2 ], [ 0, %87 ], [ 0, %90 ], [ 0, %93 ], [ -12, %47 ]
  ret i32 %100
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pinctrl_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_force_sleep(ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pinctrl_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_force_default(ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %24, %4
  %13 = phi i32 [ %25, %24 ], [ 0, %4 ]
  %14 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %8) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %26

20:                                               ; preds = %12
  %21 = add nuw i32 %13, 1
  %22 = load i32, ptr %9, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %26, %20
  %25 = phi i32 [ %21, %20 ], [ %27, %26 ]
  br label %12

26:                                               ; preds = %16
  %27 = add nuw i32 %13, 1
  %28 = load i32, ptr %9, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %24, label %32

30:                                               ; preds = %20, %4
  %31 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef %1) #10
  br label %115

32:                                               ; preds = %26, %16
  %33 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.group_desc, ptr %14, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %39, label %44

39:                                               ; preds = %32
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.group_desc, ptr %14, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  br label %46

44:                                               ; preds = %32
  %45 = add i32 %38, 1
  br label %56

46:                                               ; preds = %46, %41
  %47 = phi i32 [ 0, %41 ], [ %54, %46 ]
  %48 = phi i32 [ 1, %41 ], [ %53, %46 ]
  %49 = getelementptr %struct.imx_pin, ptr %43, i32 %47, i32 1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, -1
  %52 = lshr i32 %51, 31
  %53 = add i32 %52, %48
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, %38
  br i1 %55, label %56, label %46

56:                                               ; preds = %46, %44, %39
  %57 = phi i32 [ %45, %44 ], [ 1, %39 ], [ %53, %46 ]
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 28) #9
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %115, label %60, !prof !15

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %58, 0
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3264) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %115, label %64

64:                                               ; preds = %60
  store ptr %62, ptr %2, align 4
  store i32 %57, ptr %3, align 4
  %65 = tail call ptr @of_get_parent(ptr noundef %1) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @kfree(ptr noundef nonnull %62) #9
  br label %115

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.pinctrl_map, ptr %62, i32 0, i32 2
  store i32 2, ptr %69, align 8
  %70 = load ptr, ptr %65, align 4
  %71 = getelementptr inbounds %struct.pinctrl_map, ptr %62, i32 0, i32 4
  %72 = getelementptr inbounds %struct.pinctrl_map, ptr %62, i32 0, i32 4, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  %73 = load ptr, ptr %1, align 4
  store ptr %73, ptr %71, align 16
  tail call void @of_node_put(ptr noundef nonnull %65) #9
  %74 = getelementptr %struct.pinctrl_map, ptr %62, i32 1
  %75 = getelementptr inbounds %struct.group_desc, ptr %14, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.group_desc, ptr %14, i32 0, i32 3
  br label %80

80:                                               ; preds = %110, %78
  %81 = phi i32 [ %76, %78 ], [ %111, %110 ]
  %82 = phi i32 [ 0, %78 ], [ %112, %110 ]
  %83 = phi i32 [ 0, %78 ], [ %113, %110 ]
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr %struct.imx_pin, ptr %84, i32 %83
  %86 = load i32, ptr %33, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = getelementptr %struct.imx_pin, ptr %84, i32 %83, i32 1, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %110

93:                                               ; preds = %89, %80
  %94 = getelementptr %struct.pinctrl_map, ptr %74, i32 %82
  %95 = getelementptr inbounds %struct.pinctrl_map, ptr %94, i32 0, i32 2
  store i32 3, ptr %95, align 4
  %96 = load i32, ptr %85, align 4
  %97 = tail call ptr @pin_get_name(ptr noundef %0, i32 noundef %96) #9
  %98 = getelementptr inbounds %struct.pinctrl_map, ptr %94, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  %99 = load i32, ptr %33, align 4
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr %struct.imx_pin, ptr %84, i32 %83, i32 1, i32 0, i32 3
  %103 = getelementptr %struct.imx_pin, ptr %84, i32 %83, i32 1
  %104 = select i1 %101, ptr %102, ptr %103
  %105 = select i1 %101, i32 1, i32 2
  %106 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %98, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  %107 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %98, i32 0, i32 2
  store i32 %105, ptr %107, align 4
  %108 = add i32 %82, 1
  %109 = load i32, ptr %75, align 4
  br label %110

110:                                              ; preds = %93, %89
  %111 = phi i32 [ %109, %93 ], [ %81, %89 ]
  %112 = phi i32 [ %108, %93 ], [ %82, %89 ]
  %113 = add nuw nsw i32 %83, 1
  %114 = icmp slt i32 %113, %111
  br i1 %114, label %80, label %115

115:                                              ; preds = %110, %68, %67, %60, %56, %30
  %116 = phi i32 [ -22, %67 ], [ -22, %30 ], [ -12, %60 ], [ -12, %56 ], [ 0, %68 ], [ 0, %110 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pinconf_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.imx_pinctrl, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %6, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %44

15:                                               ; preds = %3
  %16 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %17 = getelementptr inbounds %struct.imx_pinctrl, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.imx_pinctrl, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.imx_pin_reg, ptr %20, i32 %1, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 4
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr %struct.pinctrl_pin_desc, ptr %26, i32 %1, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef %28) #10
  br label %44

29:                                               ; preds = %15
  %30 = sext i16 %22 to i32
  %31 = getelementptr inbounds %struct.imx_pinctrl, ptr %16, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  store i32 %34, ptr %2, align 4
  %35 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %18, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %18, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  store i32 %43, ptr %2, align 4
  br label %44

44:                                               ; preds = %39, %29, %24, %11
  %45 = phi i32 [ %14, %11 ], [ -22, %24 ], [ 0, %39 ], [ 0, %29 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pinconf_set(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %66

16:                                               ; preds = %4
  %17 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %18 = getelementptr inbounds %struct.imx_pinctrl, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.imx_pinctrl, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.imx_pin_reg, ptr %21, i32 %1, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %19, i32 0, i32 2
  %29 = getelementptr inbounds %struct.imx_pinctrl, ptr %17, i32 0, i32 2
  %30 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %19, i32 0, i32 4
  br label %36

31:                                               ; preds = %16
  %32 = load ptr, ptr %17, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr %struct.pinctrl_pin_desc, ptr %33, i32 %1, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.11, ptr noundef %35) #10
  br label %66

36:                                               ; preds = %63, %27
  %37 = phi i32 [ 0, %27 ], [ %64, %63 ]
  %38 = load i32, ptr %28, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %29, align 4
  %43 = load i16, ptr %22, align 2
  %44 = sext i16 %43 to i32
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %47 = load i32, ptr %30, align 4
  %48 = and i32 %47, %46
  %49 = getelementptr i32, ptr %2, i32 %37
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %52 = load ptr, ptr %29, align 4
  %53 = load i16, ptr %22, align 2
  %54 = sext i16 %53 to i32
  %55 = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #9, !srcloc !11
  br label %63

56:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %57 = getelementptr i32, ptr %2, i32 %37
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %29, align 4
  %60 = load i16, ptr %22, align 2
  %61 = sext i16 %60 to i32
  %62 = getelementptr i8, ptr %59, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #9, !srcloc !11
  br label %63

63:                                               ; preds = %56, %41
  %64 = add nuw i32 %37, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %66, label %36

66:                                               ; preds = %63, %31, %25, %12
  %67 = phi i32 [ %15, %12 ], [ -22, %31 ], [ 0, %25 ], [ 0, %63 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_pinconf_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !16
  %8 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4
  br label %35

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  %21 = call ptr @pin_get_name(ptr noundef %0, i32 noundef %2) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, ptr noundef %21) #10
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %37

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.imx_pin_reg, ptr %24, i32 %2, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %37

29:                                               ; preds = %22
  %30 = sext i16 %26 to i32
  %31 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  store i32 %34, ptr %4, align 4
  br label %35

35:                                               ; preds = %29, %17
  %36 = phi i32 [ %18, %17 ], [ %34, %29 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %36) #9
  br label %37

37:                                               ; preds = %35, %28, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_pinconf_group_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !16
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  %9 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %2) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.group_desc, ptr %9, i32 0, i32 3
  %13 = getelementptr inbounds %struct.group_desc, ptr %9, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %25, %11
  %17 = phi i32 [ %27, %25 ], [ 0, %11 ]
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr %struct.imx_pin, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = call ptr @pin_get_name(ptr noundef %0, i32 noundef %20) #9
  %22 = load i32, ptr %19, align 4
  %23 = call i32 @imx_pinconf_get(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %4)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %21, i32 noundef %26) #9
  %27 = add nuw nsw i32 %17, 1
  %28 = load i32, ptr %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %25, %16, %11, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_pinctrl_parse_functions(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @pinmux_generic_get_function(ptr noundef %10, i32 noundef %2) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %289, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  store ptr %14, ptr %11, align 4
  %15 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.function_desc, ptr %11, i32 0, i32 2
  store i32 0, ptr %18, align 4
  br label %28

19:                                               ; preds = %19, %13
  %20 = phi i32 [ %22, %19 ], [ 0, %13 ]
  %21 = phi ptr [ %23, %19 ], [ %15, %13 ]
  %22 = add i32 %20, 1
  %23 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %21) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.function_desc, ptr %11, i32 0, i32 2
  store i32 %22, ptr %26, align 4
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %17
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef %0) #10
  br label %289

30:                                               ; preds = %25
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #9
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %289, label %33, !prof !15

33:                                               ; preds = %30
  %34 = load ptr, ptr %1, align 4
  %35 = extractvalue { i32, i1 } %31, 0
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %289, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %45, %41 ], [ 0, %38 ]
  %43 = phi ptr [ %47, %41 ], [ %39, %38 ]
  %44 = load ptr, ptr %43, align 4
  %45 = add i32 %42, 1
  %46 = getelementptr ptr, ptr %36, i32 %42
  store ptr %44, ptr %46, align 4
  %47 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %43) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %38
  %50 = getelementptr inbounds %struct.function_desc, ptr %11, i32 0, i32 1
  store ptr %36, ptr %50, align 4
  %51 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %289, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 7
  %55 = getelementptr inbounds %struct.pinctrl_dev, ptr %10, i32 0, i32 3
  %56 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 6
  %57 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 4
  %58 = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 5
  br label %59

59:                                               ; preds = %286, %53
  %60 = phi ptr [ %51, %53 ], [ %287, %286 ]
  %61 = load ptr, ptr %1, align 4
  %62 = call noalias ptr @devm_kmalloc(ptr noundef %61, i32 noundef 16, i32 noundef 3520) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @of_node_put(ptr noundef nonnull %60) #9
  br label %289

65:                                               ; preds = %59
  call void @mutex_lock(ptr noundef %54) #9
  %66 = load i32, ptr %56, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %56, align 4
  %68 = call i32 @radix_tree_insert(ptr noundef %55, i32 noundef %66, ptr noundef nonnull %62) #9
  call void @mutex_unlock(ptr noundef %54) #9
  %69 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %70 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %71, 1
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 24, i32 20
  %77 = select i1 %73, i32 %76, i32 12
  %78 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %69, i32 0, i32 6
  %79 = load i8, ptr %78, align 1, !range !22
  %80 = icmp eq i8 %79, 0
  %81 = add nsw i32 %77, -4
  %82 = select i1 %80, i32 %77, i32 %81
  %83 = load ptr, ptr %60, align 4
  store ptr %83, ptr %62, align 4
  %84 = call ptr @of_get_property(ptr noundef nonnull %60, ptr noundef nonnull @.str.18, ptr noundef nonnull %7) #9
  store ptr %84, ptr %8, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %65
  %87 = call ptr @of_get_property(ptr noundef nonnull %60, ptr noundef nonnull @.str.20, ptr noundef nonnull %7) #9
  store ptr %87, ptr %8, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.21, ptr noundef nonnull %60) #10
  br label %286

91:                                               ; preds = %86, %65
  %92 = load i32, ptr %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = freeze i32 %92
  %96 = freeze i32 %82
  %97 = sdiv i32 %95, %96
  %98 = mul i32 %97, %96
  %99 = sub i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %94, %91
  %102 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.22, ptr noundef nonnull %60) #10
  br label %286

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.group_desc, ptr %62, i32 0, i32 2
  store i32 %97, ptr %104, align 4
  %105 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %97, i32 20) #9
  %106 = extractvalue { i32, i1 } %105, 1
  br i1 %106, label %112, label %107, !prof !15

107:                                              ; preds = %103
  %108 = load ptr, ptr %1, align 4
  %109 = extractvalue { i32, i1 } %105, 0
  %110 = call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef %109, i32 noundef 3520) #9
  %111 = load i32, ptr %104, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i32 [ %111, %107 ], [ %97, %103 ]
  %114 = phi ptr [ %110, %107 ], [ null, %103 ]
  %115 = getelementptr inbounds %struct.group_desc, ptr %62, i32 0, i32 3
  store ptr %114, ptr %115, align 4
  %116 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %113, i32 4) #9
  %117 = extractvalue { i32, i1 } %116, 1
  br i1 %117, label %118, label %120, !prof !15

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.group_desc, ptr %62, i32 0, i32 1
  store ptr null, ptr %119, align 4
  br label %286

120:                                              ; preds = %112
  %121 = load ptr, ptr %1, align 4
  %122 = extractvalue { i32, i1 } %116, 0
  %123 = call noalias ptr @devm_kmalloc(ptr noundef %121, i32 noundef %122, i32 noundef 3520) #9
  %124 = getelementptr inbounds %struct.group_desc, ptr %62, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %286, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %115, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %286, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %104, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %286

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %69, i32 0, i32 15
  br label %134

134:                                              ; preds = %284, %132
  %135 = phi ptr [ %127, %132 ], [ %285, %284 ]
  %136 = phi i32 [ 0, %132 ], [ %281, %284 ]
  %137 = getelementptr %struct.imx_pin, ptr %135, i32 %136
  %138 = load i32, ptr %70, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr %133, align 4
  %143 = load ptr, ptr %124, align 4
  %144 = getelementptr i32, ptr %143, i32 %136
  call void %142(ptr noundef %1, ptr noundef %144, ptr noundef %137, ptr noundef nonnull %8) #9
  br label %280

145:                                              ; preds = %134
  %146 = load ptr, ptr %124, align 4
  %147 = getelementptr i32, ptr %146, i32 %136
  %148 = load ptr, ptr %57, align 4
  %149 = getelementptr %struct.imx_pin, ptr %135, i32 %136, i32 1
  %150 = load ptr, ptr %8, align 4
  %151 = getelementptr i32, ptr %150, i32 1
  %152 = load i32, ptr %150, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #9
  %154 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %148, i32 0, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 2
  %157 = icmp ne i32 %156, 0
  %158 = icmp ne i32 %152, 0
  %159 = select i1 %157, i1 true, i1 %158
  %160 = select i1 %159, i32 %153, i32 -1
  %161 = and i32 %155, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %145
  %164 = getelementptr i32, ptr %150, i32 2
  %165 = load i32, ptr %151, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %165) #9
  %167 = icmp eq i32 %165, 0
  %168 = select i1 %167, i32 -1, i32 %166
  br label %169

169:                                              ; preds = %163, %145
  %170 = phi ptr [ %164, %163 ], [ %151, %145 ]
  %171 = phi i32 [ %168, %163 ], [ %160, %145 ]
  %172 = icmp eq i32 %160, -1
  %173 = select i1 %172, i32 %171, i32 %160
  %174 = lshr i32 %173, 2
  store i32 %174, ptr %147, align 4
  %175 = load ptr, ptr %58, align 4
  %176 = getelementptr %struct.imx_pin_reg, ptr %175, i32 %174
  store i32 %174, ptr %137, align 4
  %177 = trunc i32 %160 to i16
  store i16 %177, ptr %176, align 2
  %178 = trunc i32 %171 to i16
  %179 = getelementptr %struct.imx_pin_reg, ptr %175, i32 %174, i32 1
  store i16 %178, ptr %179, align 2
  %180 = getelementptr i32, ptr %170, i32 1
  %181 = load i32, ptr %170, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181) #9
  %183 = trunc i32 %182 to i16
  %184 = getelementptr %struct.imx_pin, ptr %135, i32 %136, i32 1, i32 0, i32 1
  store i16 %183, ptr %184, align 4
  %185 = getelementptr i32, ptr %170, i32 2
  %186 = load i32, ptr %180, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #9
  store i32 %187, ptr %149, align 4
  %188 = getelementptr i32, ptr %170, i32 3
  %189 = load i32, ptr %185, align 4
  %190 = call i32 @llvm.bswap.i32(i32 %189) #9
  %191 = getelementptr %struct.imx_pin, ptr %135, i32 %136, i32 1, i32 0, i32 2
  store i32 %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %148, i32 0, i32 6
  %193 = load i8, ptr %192, align 1, !range !22
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %266, label %195

195:                                              ; preds = %169
  %196 = load ptr, ptr %57, align 4
  %197 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !16
  %198 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %196, i32 0, i32 6
  %199 = load i8, ptr %198, align 1, !range !22
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %264, label %201

201:                                              ; preds = %195
  %202 = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %60, ptr noundef %197, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %264

204:                                              ; preds = %201
  %205 = load ptr, ptr %6, align 4
  %206 = load i32, ptr %5, align 4
  %207 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %208 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %207, i32 0, i32 10
  %209 = load i32, ptr %208, align 4
  %210 = icmp ult i32 %209, %206
  br i1 %210, label %211, label %213, !prof !15

211:                                              ; preds = %204
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 305, i32 noundef 9, ptr noundef null) #9
  %212 = load i32, ptr %208, align 4
  br label %215

213:                                              ; preds = %204
  %214 = icmp eq i32 %206, 0
  br i1 %214, label %255, label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %209, %213 ]
  %217 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %207, i32 0, i32 9
  %218 = icmp eq i32 %216, 0
  %219 = load ptr, ptr %217, align 4
  br label %220

220:                                              ; preds = %251, %215
  %221 = phi i32 [ 0, %215 ], [ %252, %251 ]
  %222 = phi i32 [ 0, %215 ], [ %253, %251 ]
  %223 = getelementptr i32, ptr %205, i32 %222
  %224 = load i32, ptr %223, align 4
  %225 = and i32 %224, 255
  %226 = lshr i32 %224, 8
  br i1 %218, label %251, label %227

227:                                              ; preds = %247, %220
  %228 = phi i32 [ %249, %247 ], [ 0, %220 ]
  %229 = phi ptr [ %248, %247 ], [ %219, %220 ]
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %225, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %229, i32 0, i32 3
  %234 = load i8, ptr %233, align 1, !range !22
  %235 = icmp eq i8 %234, 0
  %236 = icmp ult i32 %224, 256
  %237 = zext i1 %236 to i32
  %238 = select i1 %235, i32 %226, i32 %237
  %239 = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %229, i32 0, i32 2
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i32
  %242 = shl i32 %238, %241
  %243 = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %229, i32 0, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %242, %244
  %246 = or i32 %245, %221
  store i32 %246, ptr %4, align 4
  br label %251

247:                                              ; preds = %227
  %248 = getelementptr %struct.imx_cfg_params_decode, ptr %229, i32 1
  %249 = add nuw i32 %228, 1
  %250 = icmp eq i32 %249, %216
  br i1 %250, label %251, label %227

251:                                              ; preds = %247, %232, %220
  %252 = phi i32 [ %221, %220 ], [ %246, %232 ], [ %221, %247 ]
  %253 = add nuw i32 %222, 1
  %254 = icmp eq i32 %253, %206
  br i1 %254, label %255, label %220

255:                                              ; preds = %251, %213
  %256 = phi i32 [ 0, %213 ], [ %252, %251 ]
  %257 = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %207, i32 0, i32 11
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  call void %258(ptr noundef %205, i32 noundef %206, ptr noundef nonnull %4) #9
  %261 = load i32, ptr %4, align 4
  br label %262

262:                                              ; preds = %260, %255
  %263 = phi i32 [ %261, %260 ], [ %256, %255 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %264

264:                                              ; preds = %262, %201, %195
  %265 = phi i32 [ %263, %262 ], [ 0, %195 ], [ 0, %201 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %276

266:                                              ; preds = %169
  %267 = getelementptr i32, ptr %170, i32 4
  %268 = load i32, ptr %188, align 4
  %269 = call i32 @llvm.bswap.i32(i32 %268) #9
  %270 = and i32 %269, 1073741824
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %266
  %273 = or i32 %187, 16
  store i32 %273, ptr %149, align 4
  br label %274

274:                                              ; preds = %272, %266
  %275 = and i32 %269, -1073741825
  br label %276

276:                                              ; preds = %274, %264
  %277 = phi i32 [ %275, %274 ], [ %265, %264 ]
  %278 = phi ptr [ %267, %274 ], [ %188, %264 ]
  %279 = getelementptr %struct.imx_pin, ptr %135, i32 %136, i32 1, i32 0, i32 3
  store i32 %277, ptr %279, align 4
  store ptr %278, ptr %8, align 4
  br label %280

280:                                              ; preds = %276, %141
  %281 = add nuw nsw i32 %136, 1
  %282 = load i32, ptr %104, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load ptr, ptr %115, align 4
  br label %134

286:                                              ; preds = %280, %129, %126, %120, %118, %101, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %287 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %60) #9
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %59

289:                                              ; preds = %286, %64, %49, %33, %30, %28, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 383493}
!9 = !{i64 2152340503}
!10 = !{i64 2152340701}
!11 = !{i64 383075}
!12 = !{i64 2152341711}
!13 = !{i64 2152342950}
!14 = !{i64 2152343151}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{i64 2152347237}
!18 = !{i64 2152349171}
!19 = !{i64 2152349370}
!20 = !{i64 2152350376}
!21 = !{i64 2152352370}
!22 = !{i8 0, i8 2}
