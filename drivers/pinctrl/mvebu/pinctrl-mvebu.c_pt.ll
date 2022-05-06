; ModuleID = '/llk/IR/drivers/pinctrl/mvebu/pinctrl-mvebu.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-mvebu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.mvebu_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, i32, ptr, i32, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.mvebu_mpp_ctrl_data = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.mvebu_pinctrl_group = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.mvebu_mpp_ctrl_setting = type { i8, ptr, ptr, i8, i8 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.mvebu_pinctrl_function = type { ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.65 }
%union.anon.65 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong pinctrl soc info\0A\00", align 1
@mvebu_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @mvebu_pinctrl_get_groups_count, ptr @mvebu_pinctrl_get_group_name, ptr @mvebu_pinctrl_get_group_pins, ptr null, ptr @mvebu_pinctrl_dt_node_to_map, ptr @mvebu_pinctrl_dt_free_map }, align 4
@mvebu_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @mvebu_pinmux_get_funcs_count, ptr @mvebu_pinmux_get_func_name, ptr @mvebu_pinmux_get_groups, ptr @mvebu_pinmux_set, ptr @mvebu_pinmux_gpio_request_enable, ptr null, ptr @mvebu_pinmux_gpio_set_direction, i8 0 }, align 4
@mvebu_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @mvebu_pinconf_group_get, ptr @mvebu_pinconf_group_set, ptr null, ptr @mvebu_pinconf_group_dbg_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mpp%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gpo\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gpi\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown pinctrl group %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unable to build functions\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"unable to register pinctrl driver\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"registered pinctrl driver\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"marvell,function\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"missing marvell,function in node %pOFn\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"marvell,pins\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"missing marvell,pins in node %pOFn\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"unknown pin %s\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"unsupported function %s on pin %s\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"unable to find setting %s in group %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"cannot set group %s to %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"current: %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"current: UNKNOWN\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c", available = [\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"More functions than pins(%d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 1
  %5 = and i32 %4, 2147483644
  %6 = shl i32 %1, 2
  %7 = and i32 %6, 28
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %11 = lshr i32 %10, %7
  %12 = and i32 %11, 15
  store i32 %12, ptr %2, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 1
  %5 = and i32 %4, 2147483644
  %6 = shl i32 %1, 2
  %7 = and i32 %6, 28
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %11 = shl nuw i32 15, %7
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %14 = shl i32 %2, %7
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #9
  br label %303

15:                                               ; preds = %10
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 72, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %303, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 6
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 3
  store ptr @mvebu_pinctrl_ops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 4
  store ptr @mvebu_pinmux_ops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 5
  store ptr @mvebu_pinconf_ops, ptr %30, align 4
  %31 = load i8, ptr %4, align 4
  %32 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 7
  store i8 %31, ptr %32, align 4
  store ptr %2, ptr %16, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %33, align 8
  %34 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 4
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 2
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %85, label %39

39:                                               ; preds = %79, %24
  %40 = phi i32 [ %84, %79 ], [ 0, %24 ]
  %41 = phi i32 [ %80, %79 ], [ 0, %24 ]
  %42 = phi i32 [ %81, %79 ], [ 0, %24 ]
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr %struct.mvebu_mpp_ctrl, ptr %43, i32 %42
  %45 = getelementptr %struct.mvebu_mpp_ctrl, ptr %43, i32 %42, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add i32 %40, %47
  store i32 %48, ptr %35, align 4
  %49 = load i8, ptr %45, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %39
  %52 = getelementptr %struct.mvebu_mpp_ctrl, ptr %43, i32 %42, i32 1
  %53 = getelementptr %struct.mvebu_mpp_ctrl, ptr %43, i32 %42, i32 3
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi i32 [ 0, %51 ], [ %61, %54 ]
  %56 = load i8, ptr %52, align 4
  %57 = zext i8 %56 to i32
  %58 = add nuw i32 %55, %57
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr i32, ptr %59, i32 %55
  store i32 %58, ptr %60, align 4
  %61 = add nuw nsw i32 %55, 1
  %62 = load i8, ptr %45, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %54, label %65

65:                                               ; preds = %54, %39
  %66 = phi i8 [ 0, %39 ], [ %62, %54 ]
  %67 = load ptr, ptr %44, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = zext i8 %66 to i32
  %71 = load i32, ptr %34, align 4
  %72 = add i32 %71, %70
  store i32 %72, ptr %34, align 4
  %73 = load i8, ptr %45, align 1
  %74 = zext i8 %73 to i32
  %75 = add i32 %41, %74
  br label %79

76:                                               ; preds = %65
  %77 = load i32, ptr %34, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %34, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i32 [ %41, %76 ], [ %75, %69 ]
  %81 = add nuw i32 %42, 1
  %82 = load i32, ptr %36, align 4
  %83 = icmp ult i32 %81, %82
  %84 = load i32, ptr %35, align 4
  br i1 %83, label %39, label %85

85:                                               ; preds = %79, %24
  %86 = phi i32 [ 0, %24 ], [ %84, %79 ]
  %87 = phi i32 [ 0, %24 ], [ %80, %79 ]
  %88 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 12) #8
  %89 = extractvalue { i32, i1 } %88, 1
  br i1 %89, label %303, label %90, !prof !13

90:                                               ; preds = %85
  %91 = extractvalue { i32, i1 } %88, 0
  %92 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %91, i32 noundef 3520) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %303, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %35, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %97, %94
  %98 = phi i32 [ %100, %97 ], [ 0, %94 ]
  %99 = getelementptr %struct.pinctrl_pin_desc, ptr %92, i32 %98
  store i32 %98, ptr %99, align 4
  %100 = add nuw i32 %98, 1
  %101 = icmp eq i32 %100, %95
  br i1 %101, label %102, label %97

102:                                              ; preds = %97, %94
  %103 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 2, i32 1
  store ptr %92, ptr %103, align 4
  %104 = load i32, ptr %34, align 4
  %105 = shl i32 %104, 5
  %106 = shl i32 %87, 3
  %107 = add i32 %105, %106
  %108 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %107, i32 noundef 3520) #8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %303, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 3
  store ptr %108, ptr %111, align 4
  %112 = load i32, ptr %36, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %34, align 4
  %116 = shl i32 %115, 5
  %117 = getelementptr i8, ptr %108, i32 %116
  %118 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 2
  br label %123

119:                                              ; preds = %193, %110
  %120 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %278, label %202

123:                                              ; preds = %199, %114
  %124 = phi ptr [ %108, %114 ], [ %201, %199 ]
  %125 = phi ptr [ %117, %114 ], [ %195, %199 ]
  %126 = phi i32 [ 0, %114 ], [ %196, %199 ]
  %127 = phi i32 [ 0, %114 ], [ %200, %199 ]
  %128 = load ptr, ptr %7, align 4
  %129 = getelementptr %struct.mvebu_mpp_ctrl, ptr %128, i32 %126
  %130 = load ptr, ptr %118, align 4
  %131 = icmp eq ptr %130, null
  %132 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %130, i32 %126
  %133 = select i1 %131, ptr null, ptr %132
  %134 = getelementptr %struct.mvebu_pinctrl_group, ptr %124, i32 %127, i32 5
  store i32 %127, ptr %134, align 4
  %135 = load ptr, ptr %111, align 4
  %136 = getelementptr %struct.mvebu_pinctrl_group, ptr %135, i32 %127, i32 1
  store ptr %129, ptr %136, align 4
  %137 = load ptr, ptr %111, align 4
  %138 = getelementptr %struct.mvebu_pinctrl_group, ptr %137, i32 %127, i32 2
  store ptr %133, ptr %138, align 4
  %139 = load ptr, ptr %129, align 4
  %140 = load ptr, ptr %111, align 4
  %141 = getelementptr %struct.mvebu_pinctrl_group, ptr %140, i32 %127
  store ptr %139, ptr %141, align 4
  %142 = getelementptr %struct.mvebu_mpp_ctrl, ptr %128, i32 %126, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %111, align 4
  %145 = getelementptr %struct.mvebu_pinctrl_group, ptr %144, i32 %127, i32 6
  store ptr %143, ptr %145, align 4
  %146 = getelementptr %struct.mvebu_mpp_ctrl, ptr %128, i32 %126, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load ptr, ptr %111, align 4
  %150 = getelementptr %struct.mvebu_pinctrl_group, ptr %149, i32 %127, i32 7
  store i32 %148, ptr %150, align 4
  %151 = load ptr, ptr %129, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %193

153:                                              ; preds = %123
  %154 = load ptr, ptr %111, align 4
  %155 = getelementptr %struct.mvebu_pinctrl_group, ptr %154, i32 %127
  store ptr %125, ptr %155, align 4
  %156 = load ptr, ptr %111, align 4
  %157 = getelementptr %struct.mvebu_pinctrl_group, ptr %156, i32 %127, i32 7
  store i32 1, ptr %157, align 4
  %158 = getelementptr %struct.mvebu_mpp_ctrl, ptr %128, i32 %126, i32 1
  %159 = load i8, ptr %158, align 4
  %160 = zext i8 %159 to i32
  %161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %125, ptr noundef nonnull @.str.1, i32 noundef %160)
  %162 = getelementptr i8, ptr %125, i32 8
  %163 = load i8, ptr %146, align 1
  %164 = icmp ugt i8 %163, 1
  br i1 %164, label %165, label %193

165:                                              ; preds = %165, %153
  %166 = phi ptr [ %189, %165 ], [ %162, %153 ]
  %167 = phi i32 [ %188, %165 ], [ 1, %153 ]
  %168 = phi i32 [ %169, %165 ], [ %127, %153 ]
  %169 = add i32 %168, 1
  %170 = load ptr, ptr %111, align 4
  %171 = getelementptr %struct.mvebu_pinctrl_group, ptr %170, i32 %169, i32 5
  store i32 %169, ptr %171, align 4
  %172 = load ptr, ptr %111, align 4
  %173 = getelementptr %struct.mvebu_pinctrl_group, ptr %172, i32 %169, i32 1
  store ptr %129, ptr %173, align 4
  %174 = load ptr, ptr %111, align 4
  %175 = getelementptr %struct.mvebu_pinctrl_group, ptr %174, i32 %169, i32 2
  store ptr %133, ptr %175, align 4
  %176 = load ptr, ptr %111, align 4
  %177 = getelementptr %struct.mvebu_pinctrl_group, ptr %176, i32 %169
  store ptr %166, ptr %177, align 4
  %178 = load ptr, ptr %142, align 4
  %179 = getelementptr i32, ptr %178, i32 %167
  %180 = load ptr, ptr %111, align 4
  %181 = getelementptr %struct.mvebu_pinctrl_group, ptr %180, i32 %169, i32 6
  store ptr %179, ptr %181, align 4
  %182 = load ptr, ptr %111, align 4
  %183 = getelementptr %struct.mvebu_pinctrl_group, ptr %182, i32 %169, i32 7
  store i32 1, ptr %183, align 4
  %184 = load i8, ptr %158, align 4
  %185 = zext i8 %184 to i32
  %186 = add nuw i32 %167, %185
  %187 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %166, ptr noundef nonnull @.str.1, i32 noundef %186)
  %188 = add nuw nsw i32 %167, 1
  %189 = getelementptr i8, ptr %166, i32 8
  %190 = load i8, ptr %146, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ult i32 %188, %191
  br i1 %192, label %165, label %193

193:                                              ; preds = %165, %153, %123
  %194 = phi i32 [ %127, %123 ], [ %127, %153 ], [ %169, %165 ]
  %195 = phi ptr [ %125, %123 ], [ %162, %153 ], [ %189, %165 ]
  %196 = add nuw i32 %126, 1
  %197 = load i32, ptr %36, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %119

199:                                              ; preds = %193
  %200 = add i32 %194, 1
  %201 = load ptr, ptr %111, align 4
  br label %123

202:                                              ; preds = %274, %119
  %203 = phi i32 [ %275, %274 ], [ 0, %119 ]
  %204 = load ptr, ptr %11, align 4
  %205 = getelementptr %struct.mvebu_mpp_mode, ptr %204, i32 %203
  %206 = getelementptr %struct.mvebu_mpp_mode, ptr %204, i32 %203, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %207, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %274, label %211

211:                                              ; preds = %237, %202
  %212 = phi ptr [ %241, %237 ], [ %209, %202 ]
  %213 = phi i32 [ %238, %237 ], [ 0, %202 ]
  %214 = phi i32 [ %216, %237 ], [ 0, %202 ]
  %215 = phi ptr [ %239, %237 ], [ %207, %202 ]
  %216 = add i32 %214, 1
  %217 = load i8, ptr %32, align 4
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %215, i32 0, i32 3
  %221 = load i8, ptr %220, align 4
  %222 = and i8 %221, %217
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %219, %211
  %225 = add i32 %213, 1
  %226 = tail call i32 @strcmp(ptr noundef nonnull %212, ptr noundef nonnull dereferenceable(5) @.str.2)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = tail call i32 @strcmp(ptr noundef nonnull %212, ptr noundef nonnull dereferenceable(4) @.str.3)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = tail call i32 @strcmp(ptr noundef nonnull %212, ptr noundef nonnull dereferenceable(4) @.str.4)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231, %228, %224
  %235 = phi i8 [ 3, %224 ], [ 1, %228 ], [ 2, %231 ]
  %236 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %215, i32 0, i32 4
  store i8 %235, ptr %236, align 1
  br label %237

237:                                              ; preds = %234, %231, %219
  %238 = phi i32 [ %225, %231 ], [ %213, %219 ], [ %225, %234 ]
  %239 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %215, i32 1
  %240 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %215, i32 1, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %211

243:                                              ; preds = %237
  %244 = icmp eq i32 %238, 0
  br i1 %244, label %274, label %245

245:                                              ; preds = %243
  %246 = load i8, ptr %205, align 4
  %247 = zext i8 %246 to i32
  %248 = load i32, ptr %34, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %269, label %250

250:                                              ; preds = %245
  %251 = load ptr, ptr %111, align 4
  br label %252

252:                                              ; preds = %263, %250
  %253 = phi i32 [ 0, %250 ], [ %264, %263 ]
  %254 = getelementptr %struct.mvebu_pinctrl_group, ptr %251, i32 %253, i32 6
  %255 = load ptr, ptr %254, align 4
  %256 = load i32, ptr %255, align 4
  %257 = icmp ugt i32 %256, %247
  br i1 %257, label %263, label %258

258:                                              ; preds = %252
  %259 = getelementptr %struct.mvebu_pinctrl_group, ptr %251, i32 %253, i32 7
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, %256
  %262 = icmp ugt i32 %261, %247
  br i1 %262, label %266, label %263

263:                                              ; preds = %258, %252
  %264 = add nuw i32 %253, 1
  %265 = icmp eq i32 %264, %248
  br i1 %265, label %269, label %252

266:                                              ; preds = %258
  %267 = getelementptr %struct.mvebu_pinctrl_group, ptr %251, i32 %253
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %266, %263, %245
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %247) #9
  br label %274

270:                                              ; preds = %266
  %271 = load ptr, ptr %206, align 4
  %272 = getelementptr %struct.mvebu_pinctrl_group, ptr %251, i32 %253, i32 3
  store ptr %271, ptr %272, align 4
  %273 = getelementptr %struct.mvebu_pinctrl_group, ptr %251, i32 %253, i32 4
  store i32 %216, ptr %273, align 4
  br label %274

274:                                              ; preds = %270, %269, %243, %202
  %275 = add nuw i32 %203, 1
  %276 = load i32, ptr %120, align 4
  %277 = icmp ult i32 %275, %276
  br i1 %277, label %202, label %278

278:                                              ; preds = %274, %119
  %279 = tail call fastcc i32 @mvebu_pinctrl_build_functions(ptr noundef %0, ptr noundef nonnull %16)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #9
  br label %303

282:                                              ; preds = %278
  %283 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef %26, ptr noundef nonnull %16) #8
  %284 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %16, i32 0, i32 1
  store ptr %283, ptr %284, align 4
  %285 = icmp ugt ptr %283, inttoptr (i32 -4096 to ptr)
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %287 = load ptr, ptr %284, align 4
  %288 = ptrtoint ptr %287 to i32
  br label %303

289:                                              ; preds = %282
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8) #9
  %290 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 7
  %291 = load i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %303, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 6
  br label %295

295:                                              ; preds = %295, %293
  %296 = phi i32 [ 0, %293 ], [ %300, %295 ]
  %297 = load ptr, ptr %284, align 4
  %298 = load ptr, ptr %294, align 4
  %299 = getelementptr %struct.pinctrl_gpio_range, ptr %298, i32 %296
  tail call void @pinctrl_add_gpio_range(ptr noundef %297, ptr noundef %299) #8
  %300 = add nuw i32 %296, 1
  %301 = load i32, ptr %290, align 4
  %302 = icmp ult i32 %300, %301
  br i1 %302, label %295, label %303

303:                                              ; preds = %295, %289, %286, %281, %102, %90, %85, %15, %14
  %304 = phi i32 [ %279, %281 ], [ %288, %286 ], [ -22, %14 ], [ -12, %15 ], [ -12, %90 ], [ -12, %102 ], [ -12, %85 ], [ 0, %289 ], [ 0, %295 ]
  ret i32 %304
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pinctrl_build_functions(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 2, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 12) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %172, label %8, !prof !13

8:                                                ; preds = %2
  %9 = extractvalue { i32, i1 } %6, 0
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %9, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %172, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 6
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 5
  store ptr %10, ptr %18, align 4
  br label %172

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 7
  %22 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %10, i32 0, i32 2
  br label %23

23:                                               ; preds = %87, %19
  %24 = phi i32 [ %14, %19 ], [ %88, %87 ]
  %25 = phi i32 [ 0, %19 ], [ %91, %87 ]
  %26 = phi i32 [ 0, %19 ], [ %90, %87 ]
  %27 = phi i32 [ %4, %19 ], [ %89, %87 ]
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr %struct.mvebu_pinctrl_group, ptr %28, i32 %25, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %87, label %32

32:                                               ; preds = %23
  %33 = getelementptr %struct.mvebu_pinctrl_group, ptr %28, i32 %25, i32 3
  br label %34

34:                                               ; preds = %79, %32
  %35 = phi i32 [ 0, %32 ], [ %82, %79 ]
  %36 = phi i32 [ %26, %32 ], [ %81, %79 ]
  %37 = phi i32 [ %27, %32 ], [ %80, %79 ]
  %38 = load i8, ptr %21, align 4
  %39 = icmp eq i8 %38, 0
  %40 = load ptr, ptr %33, align 4
  br i1 %39, label %46, label %41

41:                                               ; preds = %34
  %42 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %40, i32 %35, i32 3
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, %38
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %41, %34
  %47 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %40, i32 %35, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp slt i32 %37, 1
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %22, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %10, align 4
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef %48) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %66

57:                                               ; preds = %66
  %58 = load ptr, ptr %68, align 4
  %59 = tail call i32 @strcmp(ptr noundef %58, ptr noundef %48) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %51, %53 ], [ %70, %57 ]
  %63 = phi ptr [ %10, %53 ], [ %68, %57 ]
  %64 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %63, i32 0, i32 2
  %65 = add i32 %62, 1
  store i32 %65, ptr %64, align 4
  br label %79

66:                                               ; preds = %57, %53
  %67 = phi ptr [ %68, %57 ], [ %10, %53 ]
  %68 = getelementptr %struct.mvebu_pinctrl_function, ptr %67, i32 1
  %69 = getelementptr %struct.mvebu_pinctrl_function, ptr %67, i32 1, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %57

72:                                               ; preds = %46
  %73 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %73) #9
  br label %79

74:                                               ; preds = %66, %50
  %75 = phi ptr [ %10, %50 ], [ %68, %66 ]
  %76 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %75, i32 0, i32 2
  store ptr %48, ptr %75, align 4
  store i32 1, ptr %76, align 4
  %77 = add i32 %37, -1
  %78 = add i32 %36, 1
  br label %79

79:                                               ; preds = %74, %72, %61, %41
  %80 = phi i32 [ %37, %41 ], [ %77, %74 ], [ %37, %61 ], [ %37, %72 ]
  %81 = phi i32 [ %36, %41 ], [ %78, %74 ], [ %36, %61 ], [ %36, %72 ]
  %82 = add nuw i32 %35, 1
  %83 = load i32, ptr %29, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %34, label %85

85:                                               ; preds = %79
  %86 = load i32, ptr %13, align 4
  br label %87

87:                                               ; preds = %85, %23
  %88 = phi i32 [ %24, %23 ], [ %86, %85 ]
  %89 = phi i32 [ %27, %23 ], [ %80, %85 ]
  %90 = phi i32 [ %26, %23 ], [ %81, %85 ]
  %91 = add nuw i32 %25, 1
  %92 = icmp ult i32 %91, %88
  br i1 %92, label %23, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 6
  store i32 %90, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 5
  store ptr %10, ptr %95, align 4
  %96 = icmp eq i32 %88, 0
  br i1 %96, label %172, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 3
  %99 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %1, i32 0, i32 7
  br label %100

100:                                              ; preds = %168, %97
  %101 = phi i32 [ %88, %97 ], [ %169, %168 ]
  %102 = phi i32 [ 0, %97 ], [ %170, %168 ]
  %103 = load ptr, ptr %98, align 4
  %104 = getelementptr %struct.mvebu_pinctrl_group, ptr %103, i32 %102
  %105 = getelementptr %struct.mvebu_pinctrl_group, ptr %103, i32 %102, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %168, label %108

108:                                              ; preds = %100
  %109 = getelementptr %struct.mvebu_pinctrl_group, ptr %103, i32 %102, i32 3
  br label %110

110:                                              ; preds = %162, %108
  %111 = phi i32 [ %106, %108 ], [ %163, %162 ]
  %112 = phi i32 [ 0, %108 ], [ %164, %162 ]
  %113 = load i8, ptr %99, align 4
  %114 = icmp eq i8 %113, 0
  %115 = load ptr, ptr %109, align 4
  br i1 %114, label %121, label %116

116:                                              ; preds = %110
  %117 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %115, i32 %112, i32 3
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, %113
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %162, label %121

121:                                              ; preds = %116, %110
  %122 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %115, i32 %112, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %94, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr %95, align 4
  br label %131

128:                                              ; preds = %131
  %129 = add nuw i32 %132, 1
  %130 = icmp eq i32 %129, %124
  br i1 %130, label %137, label %131

131:                                              ; preds = %128, %126
  %132 = phi i32 [ 0, %126 ], [ %129, %128 ]
  %133 = getelementptr %struct.mvebu_pinctrl_function, ptr %127, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @strcmp(ptr noundef %123, ptr noundef %134) #8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %128

137:                                              ; preds = %131, %128, %121
  %138 = phi ptr [ null, %121 ], [ %133, %131 ], [ null, %128 ]
  %139 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %138, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %144, i32 4) #8
  %146 = extractvalue { i32, i1 } %145, 1
  br i1 %146, label %147, label %148, !prof !13

147:                                              ; preds = %142
  store ptr null, ptr %139, align 4
  br label %172

148:                                              ; preds = %142
  %149 = extractvalue { i32, i1 } %145, 0
  %150 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %149, i32 noundef 3520) #8
  store ptr %150, ptr %139, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %172, label %152

152:                                              ; preds = %148, %137
  %153 = phi ptr [ %140, %137 ], [ %150, %148 ]
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi ptr [ %158, %154 ], [ %153, %152 ]
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  %158 = getelementptr ptr, ptr %155, i32 1
  br i1 %157, label %159, label %154

159:                                              ; preds = %154
  %160 = load ptr, ptr %104, align 4
  store ptr %160, ptr %155, align 4
  %161 = load i32, ptr %105, align 4
  br label %162

162:                                              ; preds = %159, %116
  %163 = phi i32 [ %161, %159 ], [ %111, %116 ]
  %164 = add nuw i32 %112, 1
  %165 = icmp ult i32 %164, %163
  br i1 %165, label %110, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %13, align 4
  br label %168

168:                                              ; preds = %166, %100
  %169 = phi i32 [ %167, %166 ], [ %101, %100 ]
  %170 = add nuw i32 %102, 1
  %171 = icmp ult i32 %170, %169
  br i1 %171, label %100, label %172

172:                                              ; preds = %168, %148, %147, %93, %16, %8, %2
  %173 = phi i32 [ -12, %8 ], [ -12, %147 ], [ -12, %2 ], [ 0, %93 ], [ 0, %16 ], [ -12, %148 ], [ 0, %168 ]
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 8) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %30, label %14, !prof !13

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %15, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %24, %21 ], [ 0, %18 ]
  %23 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %16, i32 %22
  store ptr %5, ptr %23, align 4
  %24 = add nuw nsw i32 %22, 1
  %25 = load i32, ptr %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %21, label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 2
  store ptr %16, ptr %28, align 4
  %29 = tail call i32 @mvebu_pinctrl_probe(ptr noundef %0)
  br label %30

30:                                               ; preds = %27, %14, %9, %7
  %31 = phi i32 [ %8, %7 ], [ %29, %27 ], [ -12, %14 ], [ -12, %9 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_regmap_mpp_ctrl_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = lshr i32 %1, 1
  %6 = and i32 %5, 2147483644
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !14
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %6
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = shl i32 %1, 2
  %15 = and i32 %14, 28
  %16 = load i32, ptr %4, align 4
  %17 = lshr i32 %16, %15
  %18 = and i32 %17, 15
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_regmap_mpp_ctrl_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 1
  %5 = and i32 %4, 2147483644
  %6 = shl i32 %1, 2
  %7 = and i32 %6, 28
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %5
  %12 = shl nuw i32 15, %7
  %13 = shl i32 %2, %7
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_simple_regmap_probe(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @syscon_node_to_regmap(ptr noundef %8) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = ptrtoint ptr %9 to i32
  br label %35

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 8) #8
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %35, label %18, !prof !13

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %16, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %19, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %14, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %25, %22
  %26 = phi i32 [ %29, %25 ], [ 0, %22 ]
  %27 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %20, i32 %26
  store ptr %9, ptr %27, align 4
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  store i32 %2, ptr %28, align 4
  %29 = add nuw nsw i32 %26, 1
  %30 = load i32, ptr %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %25, label %32

32:                                               ; preds = %25, %22
  %33 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %6, i32 0, i32 2
  store ptr %20, ptr %33, align 4
  %34 = tail call i32 @mvebu_pinctrl_probe(ptr noundef %0)
  br label %35

35:                                               ; preds = %32, %18, %13, %11
  %36 = phi i32 [ %12, %11 ], [ %34, %32 ], [ -12, %18 ], [ -12, %13 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mvebu_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.mvebu_pinctrl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %1, i32 6
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %1, i32 7
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !14
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %7 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %1) #9
  br label %96

11:                                               ; preds = %4
  %12 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef %1) #9
  br label %96

16:                                               ; preds = %11
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 28) #8
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %19, label %20, !prof !13

19:                                               ; preds = %16
  store ptr null, ptr %2, align 4
  br label %96

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %17, 0
  %22 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #10
  store ptr %22, ptr %2, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %96, label %24

24:                                               ; preds = %20
  %25 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %26 = call ptr @of_prop_next_string(ptr noundef %25, ptr noundef null) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %95, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %6, i32 0, i32 4
  %30 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %6, i32 0, i32 3
  %31 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %6, i32 0, i32 7
  br label %32

32:                                               ; preds = %91, %28
  %33 = phi i32 [ 0, %28 ], [ %92, %91 ]
  %34 = phi ptr [ %26, %28 ], [ %93, %91 ]
  %35 = load i32, ptr %29, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %30, align 4
  br label %42

39:                                               ; preds = %42
  %40 = add nuw i32 %43, 1
  %41 = icmp eq i32 %40, %35
  br i1 %41, label %50, label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ 0, %37 ], [ %40, %39 ]
  %44 = getelementptr %struct.mvebu_pinctrl_group, ptr %38, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @strcmp(ptr noundef nonnull %34, ptr noundef %45) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %39

48:                                               ; preds = %42
  %49 = icmp eq ptr %44, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %39, %32
  %51 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13, ptr noundef nonnull %34) #9
  br label %91

52:                                               ; preds = %48
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr %struct.mvebu_pinctrl_group, ptr %38, i32 %43, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %52
  %58 = getelementptr %struct.mvebu_pinctrl_group, ptr %38, i32 %43, i32 3
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %74, %57
  %61 = phi i32 [ 0, %57 ], [ %75, %74 ]
  %62 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %59, i32 %61, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 @strcmp(ptr noundef %53, ptr noundef %63) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i8, ptr %31, align 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %59, i32 %61, i32 3
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, %67
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %60
  %75 = add nuw i32 %61, 1
  %76 = icmp eq i32 %75, %55
  br i1 %76, label %80, label %60

77:                                               ; preds = %69, %66
  %78 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %59, i32 %61
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74, %52
  %81 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.14, ptr noundef %53, ptr noundef nonnull %34) #9
  br label %91

82:                                               ; preds = %77
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr %struct.pinctrl_map, ptr %83, i32 %33, i32 2
  store i32 2, ptr %84, align 4
  %85 = load ptr, ptr %2, align 4
  %86 = getelementptr %struct.pinctrl_map, ptr %85, i32 %33, i32 4
  store ptr %34, ptr %86, align 4
  %87 = load ptr, ptr %5, align 4
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr %struct.pinctrl_map, ptr %88, i32 %33, i32 4, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  %90 = add i32 %33, 1
  br label %91

91:                                               ; preds = %82, %80, %50
  %92 = phi i32 [ %90, %82 ], [ %33, %80 ], [ %33, %50 ]
  %93 = call ptr @of_prop_next_string(ptr noundef %25, ptr noundef nonnull %34) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %32

95:                                               ; preds = %91, %24
  store i32 %12, ptr %3, align 4
  br label %96

96:                                               ; preds = %95, %20, %19, %14, %9
  %97 = phi i32 [ 0, %9 ], [ 0, %14 ], [ 0, %95 ], [ -12, %20 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pinctrl_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_get_funcs_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mvebu_pinmux_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.mvebu_pinctrl_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mvebu_pinctrl_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.mvebu_pinctrl_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mvebu_pinctrl_function, ptr %6, i32 %1
  %8 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr %struct.mvebu_pinctrl_group, ptr %9, i32 %2, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %3
  %15 = getelementptr %struct.mvebu_pinctrl_group, ptr %9, i32 %2, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 7
  br label %18

18:                                               ; preds = %32, %14
  %19 = phi i32 [ 0, %14 ], [ %33, %32 ]
  %20 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %16, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i8, ptr %17, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %16, i32 %19, i32 3
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, %25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %18
  %33 = add nuw i32 %19, 1
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %38, label %18

35:                                               ; preds = %27, %24
  %36 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %16, i32 %19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %32, %3
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr %struct.mvebu_pinctrl_function, ptr %6, i32 %1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr ptr, ptr %41, i32 %2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef %10, ptr noundef %43) #9
  br label %73

44:                                               ; preds = %35
  %45 = load i8, ptr %36, align 4
  %46 = getelementptr %struct.mvebu_pinctrl_group, ptr %9, i32 %2, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %49 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.mvebu_pinctrl_group, ptr %50, i32 %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %44
  %55 = zext i8 %45 to i32
  %56 = getelementptr %struct.mvebu_pinctrl_group, ptr %50, i32 %47, i32 2
  %57 = getelementptr %struct.mvebu_pinctrl_group, ptr %50, i32 %47, i32 6
  %58 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %52, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %56, align 4
  %61 = load ptr, ptr %57, align 4
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 %59(ptr noundef %60, i32 noundef %62, i32 noundef %55) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %54, %44
  %66 = phi i32 [ -22, %44 ], [ %63, %54 ]
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr %struct.mvebu_pinctrl_function, ptr %6, i32 %1, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr ptr, ptr %69, i32 %2
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.16, ptr noundef %71, ptr noundef %72) #9
  br label %73

73:                                               ; preds = %65, %54, %38
  %74 = phi i32 [ %66, %65 ], [ -22, %38 ], [ 0, %54 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %86, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %13 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = icmp ugt i32 %20, %2
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %11
  %23 = add nuw i32 %12, 1
  %24 = icmp eq i32 %23, %6
  br i1 %24, label %86, label %11

25:                                               ; preds = %17
  %26 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %86, label %28

28:                                               ; preds = %25
  %29 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %32(ptr noundef %36, i32 noundef %2) #8
  br label %86

38:                                               ; preds = %28
  %39 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 7
  br label %46

46:                                               ; preds = %60, %42
  %47 = phi i32 [ 0, %42 ], [ %61, %60 ]
  %48 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %44, i32 %47, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load i8, ptr %45, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %44, i32 %47, i32 3
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, %53
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %46
  %61 = add nuw i32 %47, 1
  %62 = icmp eq i32 %61, %40
  br i1 %62, label %86, label %46

63:                                               ; preds = %55, %52
  %64 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %44, i32 %47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %64, align 4
  %68 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %12, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %71 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.mvebu_pinctrl_group, ptr %72, i32 %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %66
  %77 = zext i8 %67 to i32
  %78 = getelementptr %struct.mvebu_pinctrl_group, ptr %72, i32 %69, i32 2
  %79 = getelementptr %struct.mvebu_pinctrl_group, ptr %72, i32 %69, i32 6
  %80 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %74, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = load ptr, ptr %79, align 4
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 %81(ptr noundef %82, i32 noundef %84, i32 noundef %77) #8
  br label %86

86:                                               ; preds = %76, %66, %63, %60, %38, %34, %25, %22, %3
  %87 = phi i32 [ %37, %34 ], [ -22, %25 ], [ -524, %63 ], [ -22, %66 ], [ -22, %3 ], [ -524, %38 ], [ %85, %76 ], [ -524, %60 ], [ -22, %22 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %23, %9
  %13 = phi i32 [ 0, %9 ], [ %24, %23 ]
  %14 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %2
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %16
  %22 = icmp ugt i32 %21, %2
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %12
  %24 = add nuw i32 %13, 1
  %25 = icmp eq i32 %24, %7
  br i1 %25, label %75, label %12

26:                                               ; preds = %18
  %27 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %75, label %29

29:                                               ; preds = %26
  %30 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %33(ptr noundef %37, i32 noundef %2, i1 noundef zeroext %3) #8
  br label %75

39:                                               ; preds = %29
  %40 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.mvebu_pinctrl_group, ptr %11, i32 %13, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 7
  br label %47

47:                                               ; preds = %61, %43
  %48 = phi i32 [ 0, %43 ], [ %62, %61 ]
  %49 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %48, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 3
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i8, ptr %46, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %48, i32 3
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, %54
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %47
  %62 = add nuw i32 %48, 1
  %63 = icmp eq i32 %62, %41
  br i1 %63, label %75, label %47

64:                                               ; preds = %56, %53
  %65 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %48
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  br i1 %3, label %68, label %71

68:                                               ; preds = %67
  %69 = and i8 %50, 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %75

71:                                               ; preds = %67
  %72 = and i8 %50, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %71, %68, %64, %61, %39, %35, %26, %23, %4
  %76 = phi i32 [ %38, %35 ], [ -524, %74 ], [ -22, %26 ], [ -524, %64 ], [ 0, %71 ], [ 0, %68 ], [ -22, %4 ], [ -524, %39 ], [ -524, %61 ], [ -22, %23 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %1, i32 2
  %15 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %1, i32 6
  %16 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %9, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = load ptr, ptr %15, align 4
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = tail call i32 %17(ptr noundef %18, i32 noundef %20, i32 noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %28, %13
  %25 = phi i32 [ %26, %28 ], [ 0, %13 ]
  %26 = add nuw i32 %25, 1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = load ptr, ptr %15, align 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i32, ptr %2, i32 %26
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 %31(ptr noundef %32, i32 noundef %34, i32 noundef %36) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %24, label %39

39:                                               ; preds = %28, %24, %13, %11, %4
  %40 = phi i32 [ -22, %4 ], [ 0, %11 ], [ %22, %13 ], [ %37, %28 ], [ 0, %24 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mvebu_pinctrl_group, ptr %6, i32 %1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.mvebu_pinctrl_group, ptr %6, i32 %1, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.mvebu_pinctrl_group, ptr %6, i32 %1, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %12(ptr noundef %14, i32 noundef %17, ptr noundef %2) #8
  br label %19

19:                                               ; preds = %10, %3
  %20 = phi i32 [ %18, %10 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pinconf_group_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !14
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %135, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %2, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %2, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = call i32 %16(ptr noundef %18, i32 noundef %21, ptr noundef nonnull %4) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %14
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %5, i32 0, i32 7
  %27 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %2, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %47, %30
  %34 = phi i32 [ 0, %30 ], [ %48, %47 ]
  %35 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %32, i32 %34
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %25, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i8, ptr %26, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %32, i32 %34, i32 3
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, %40
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %33
  %48 = add nuw i32 %34, 1
  %49 = icmp eq i32 %48, %28
  br i1 %49, label %76, label %33

50:                                               ; preds = %42, %39
  %51 = icmp eq ptr %35, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %50
  %53 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %32, i32 %34, i32 1
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %54) #8
  %55 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %32, i32 %34, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %56) #8
  br label %59

59:                                               ; preds = %58, %52
  %60 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %32, i32 %34, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 3
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 40) #8
  %65 = load i8, ptr %60, align 1
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 105) #8
  %69 = load i8, ptr %60, align 1
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i8 [ %69, %68 ], [ %65, %64 ]
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 111) #8
  br label %75

75:                                               ; preds = %74, %70
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 41) #8
  br label %77

76:                                               ; preds = %50, %47, %24
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %77

77:                                               ; preds = %76, %75, %59
  %78 = phi ptr [ %35, %59 ], [ %35, %75 ], [ null, %76 ]
  %79 = load i32, ptr %27, align 4
  %80 = icmp ugt i32 %79, 1
  br i1 %80, label %81, label %135

81:                                               ; preds = %77
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  %82 = load i32, ptr %27, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %134, label %84

84:                                               ; preds = %81
  %85 = getelementptr %struct.mvebu_pinctrl_group, ptr %7, i32 %2, i32 3
  br label %86

86:                                               ; preds = %130, %84
  %87 = phi i32 [ 0, %84 ], [ %131, %130 ]
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %88, i32 %87
  %90 = icmp eq ptr %78, %89
  br i1 %90, label %130, label %91

91:                                               ; preds = %86
  %92 = load i8, ptr %26, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %88, i32 %87, i32 3
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, %92
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %130, label %99

99:                                               ; preds = %94, %91
  %100 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %88, i32 %87, i32 1
  %101 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %101) #8
  %102 = load ptr, ptr %85, align 4
  %103 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %102, i32 %87, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %104) #8
  %107 = load ptr, ptr %85, align 4
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi ptr [ %107, %106 ], [ %102, %99 ]
  %110 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %109, i32 %87, i32 4
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 3
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %108
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 40) #8
  %115 = load ptr, ptr %85, align 4
  %116 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %115, i32 %87, i32 4
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 2
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 105) #8
  %121 = load ptr, ptr %85, align 4
  %122 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %121, i32 %87, i32 4
  %123 = load i8, ptr %122, align 1
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi i8 [ %123, %120 ], [ %117, %114 ]
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 111) #8
  br label %129

129:                                              ; preds = %128, %124
  call void @seq_putc(ptr noundef %1, i8 noundef zeroext 41) #8
  br label %130

130:                                              ; preds = %129, %108, %94, %86
  %131 = add nuw i32 %87, 1
  %132 = load i32, ptr %27, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %86, label %134

134:                                              ; preds = %130, %81
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.22) #8
  br label %135

135:                                              ; preds = %134, %77, %14, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 3753086}
!9 = !{i64 2152468640}
!10 = !{i64 2152468983}
!11 = !{i64 2152469191}
!12 = !{i64 3752668}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
