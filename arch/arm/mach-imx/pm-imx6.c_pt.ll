; ModuleID = '/llk/IR/arch/arm/mach-imx/pm-imx6.c_pt.bc'
source_filename = "../arch/arm/mach-imx/pm-imx6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx6_pm_socdata = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx6_cpu_pm_info = type { i32, i32, i32, i32, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, i32, [33 x [2 x i32]], [4 x i8] }
%struct.imx6_pm_base = type { i32, ptr }
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
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ccm_base = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [23 x i8] c"fsl,pmic-stby-poweroff\00", align 1
@imx6q_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 33, ptr @imx6q_mmdc_io_offset }, section ".init.rodata", align 4
@imx6dl_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.20, ptr @.str.21, i32 33, ptr @imx6dl_mmdc_io_offset }, section ".init.rodata", align 4
@imx6sl_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.21, i32 19, ptr @imx6sl_mmdc_io_offset }, section ".init.rodata", align 4
@imx6sll_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.21, i32 14, ptr @imx6sll_mmdc_io_offset }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@imx6sx_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.21, i32 20, ptr @imx6sx_mmdc_io_offset }, section ".init.rodata", align 4
@imx6ul_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null, i32 14, ptr @imx6ul_mmdc_io_offset }, section ".init.rodata", align 4
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\014%s: pm_power_off already claimed  %p %ps!\0A\00", align 1
@__func__.imx6_pm_stby_poweroff_probe = private unnamed_addr constant [28 x i8] c"imx6_pm_stby_poweroff_probe\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\010Unable to poweroff system\0A\00", align 1
@imx6_suspend_in_ocram_fn = internal unnamed_addr global ptr null, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@suspend_ocram_base = internal unnamed_addr global ptr null, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"arch/arm/mach-imx/pm-imx6.c\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\014%s: No DDR LPM support with suspend %d!\0A\00", align 1
@__func__.imx6_pm_common_init = private unnamed_addr constant [20 x i8] c"imx6_pm_common_init\00", align 1
@imx6q_pm_ops = internal constant %struct.platform_suspend_ops { ptr @imx6q_pm_valid, ptr null, ptr null, ptr null, ptr @imx6q_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"\014%s: invalid argument!\0A\00", align 1
@__func__.imx6q_suspend_init = private unnamed_addr constant [19 x i8] c"imx6q_suspend_init\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mmio-sram\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\014%s: failed to find ocram node!\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\014%s: failed to find ocram device!\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\014%s: ocram pool unavailable!\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\014%s: unable to alloc ocram!\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\014%s: failed to get mmdc base %d!\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\014%s: failed to get src base %d!\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\014%s: failed to get iomuxc base %d!\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\014%s: failed to get gpc base %d!\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"\014%s: failed to get pl310-cache base %d!\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"fsl,imx6q-mmdc\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"fsl,imx6q-src\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"fsl,imx6q-iomuxc\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"fsl,imx6q-gpc\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"arm,pl310-cache\00", align 1
@imx6q_mmdc_io_offset = internal constant [33 x i32] [i32 1452, i32 1460, i32 1320, i32 1312, i32 1300, i32 1296, i32 1468, i32 1476, i32 1388, i32 1400, i32 1416, i32 1428, i32 1448, i32 1456, i32 1316, i32 1308, i32 1304, i32 1292, i32 1464, i32 1472, i32 1924, i32 1928, i32 1940, i32 1948, i32 1952, i32 1956, i32 1960, i32 1864, i32 1436, i32 1440, i32 1872, i32 1908, i32 1868], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"fsl,imx6dl-iomuxc\00", align 1
@imx6dl_mmdc_io_offset = internal constant [33 x i32] [i32 1136, i32 1140, i32 1144, i32 1148, i32 1152, i32 1156, i32 1160, i32 1164, i32 1124, i32 1168, i32 1196, i32 1200, i32 1212, i32 1216, i32 1220, i32 1224, i32 1228, i32 1232, i32 1236, i32 1240, i32 1892, i32 1904, i32 1912, i32 1916, i32 1920, i32 1924, i32 1932, i32 1864, i32 1204, i32 1208, i32 1872, i32 1888, i32 1868], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"fsl,imx6sl-mmdc\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"fsl,imx6sl-src\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"fsl,imx6sl-iomuxc\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"fsl,imx6sl-gpc\00", align 1
@imx6sl_mmdc_io_offset = internal constant [19 x i32] [i32 780, i32 784, i32 788, i32 792, i32 1476, i32 1484, i32 1492, i32 1496, i32 768, i32 796, i32 824, i32 1452, i32 828, i32 832, i32 1456, i32 1472, i32 816, i32 820, i32 800], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"fsl,imx6sll-mmdc\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"fsl,imx6sll-src\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"fsl,imx6sll-iomuxc\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"fsl,imx6sll-gpc\00", align 1
@imx6sll_mmdc_io_offset = internal constant [14 x i32] [i32 660, i32 664, i32 668, i32 672, i32 1348, i32 1356, i32 1364, i32 1368, i32 1328, i32 1344, i32 684, i32 1324, i32 676, i32 680], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"fsl,imx6sx-mmdc\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"fsl,imx6sx-src\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"fsl,imx6sx-iomuxc\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"fsl,imx6sx-gpc\00", align 1
@imx6sx_mmdc_io_offset = internal constant [20 x i32] [i32 748, i32 752, i32 756, i32 760, i32 1548, i32 1552, i32 1564, i32 1568, i32 768, i32 764, i32 812, i32 1524, i32 784, i32 788, i32 1528, i32 1544, i32 816, i32 820, i32 824, i32 828], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"fsl,imx6ul-mmdc\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"fsl,imx6ul-src\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"fsl,imx6ul-iomuxc\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"fsl,imx6ul-gpc\00", align 1
@imx6ul_mmdc_io_offset = internal constant [14 x i32] [i32 580, i32 584, i32 588, i32 592, i32 636, i32 1176, i32 1188, i32 1168, i32 640, i32 644, i32 608, i32 612, i32 1172, i32 1200], section ".init.rodata", align 4
@switch.table.imx6q_pm_enter = private unnamed_addr constant [12 x i32] [i32 524288, i32 2097152, i32 524288, i32 2097152, i32 524288, i32 524288, i32 2097152, i32 524288, i32 2097152, i32 2097152, i32 2097152, i32 524288], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = and i32 %4, -131073
  %6 = select i1 %0, i32 131072, i32 0
  %7 = or i32 %5, %6
  %8 = load ptr, ptr @ccm_base, align 4
  %9 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx6_enable_rbc(i1 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @imx_gpc_mask_all() #8
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !8
  %4 = and i32 %3, -134217729
  %5 = select i1 %0, i32 134217728, i32 0
  %6 = or i32 %4, %5
  %7 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #8, !srcloc !9
  %8 = load ptr, ptr @ccm_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  %10 = and i32 %9, -132120577
  %11 = select i1 %0, i32 132120576, i32 0
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #8, !srcloc !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_mask_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_restore_all() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx6_set_lpm(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = and i32 %4, -4
  switch i32 %0, label %41 [
    i32 0, label %38
    i32 1, label %6
    i32 3, label %8
    i32 2, label %18
    i32 4, label %21
  ]

6:                                                ; preds = %1
  %7 = or i32 %5, 33
  br label %34

8:                                                ; preds = %1
  %9 = and i32 %4, -324
  %10 = load i32, ptr @__mxc_cpu_type, align 4
  %11 = icmp eq i32 %10, 96
  %12 = select i1 %11, i32 6, i32 2
  %13 = or i32 %12, %9
  switch i32 %10, label %16 [
    i32 107, label %14
    i32 103, label %14
    i32 101, label %14
    i32 100, label %14
    i32 98, label %14
    i32 96, label %14
  ]

14:                                               ; preds = %8, %8, %8, %8, %8, %8
  %15 = or i32 %13, 524288
  br label %34

16:                                               ; preds = %8
  %17 = or i32 %13, 2097152
  br label %34

18:                                               ; preds = %1
  %19 = and i32 %4, -324
  %20 = or i32 %19, 1
  br label %34

21:                                               ; preds = %1
  %22 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %22, label %27 [
    i32 96, label %23
    i32 98, label %25
  ]

23:                                               ; preds = %21
  %24 = or i32 %5, 1862
  br label %29

25:                                               ; preds = %21
  %26 = or i32 %5, 1862
  br label %29

27:                                               ; preds = %21
  %28 = or i32 %5, 1858
  switch i32 %22, label %32 [
    i32 100, label %29
    i32 101, label %29
    i32 103, label %29
    i32 107, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %25, %23
  %30 = phi i32 [ %28, %27 ], [ %24, %23 ], [ %26, %25 ], [ %28, %27 ], [ %28, %27 ], [ %28, %27 ]
  %31 = or i32 %30, 524288
  br label %34

32:                                               ; preds = %27
  %33 = or i32 %5, 2099010
  br label %34

34:                                               ; preds = %32, %29, %18, %16, %14, %6
  %35 = phi i32 [ %7, %6 ], [ %17, %16 ], [ %15, %14 ], [ %20, %18 ], [ %33, %32 ], [ %31, %29 ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %36 = load ptr, ptr @ccm_base, align 4
  %37 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !9
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  br label %41

38:                                               ; preds = %1
  %39 = load ptr, ptr @ccm_base, align 4
  %40 = getelementptr i8, ptr %39, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %5) #8, !srcloc !9
  br label %41

41:                                               ; preds = %38, %34, %1
  %42 = phi i32 [ -22, %1 ], [ 0, %38 ], [ 0, %34 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_hwirq_unmask(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_hwirq_mask(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6_pm_ccm_init(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %0) #8
  %3 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #8
  store ptr %3, ptr @ccm_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 84
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  %9 = and i32 %8, -4
  %10 = load ptr, ptr @ccm_base, align 4
  %11 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !9
  %12 = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef null) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr @pm_power_off, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.imx6_pm_stby_poweroff_probe, ptr noundef nonnull %15, ptr noundef nonnull %15) #9
  br label %20

19:                                               ; preds = %14
  store ptr @imx6_pm_stby_poweroff, ptr @pm_power_off, align 4
  br label %20

20:                                               ; preds = %19, %17, %6
  tail call void @of_node_put(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6q_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6q_pm_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx6_pm_common_init(ptr noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !11

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 601, i32 noundef 9, ptr noundef null) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call fastcc i32 @imx6q_suspend_init(ptr noundef %0) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.imx6_pm_common_init, i32 noundef %6) #9
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6dl_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6dl_pm_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6sl_pm_init() local_unnamed_addr #3 section ".init.text" {
  %1 = load i32, ptr @__mxc_cpu_type, align 4
  %2 = icmp eq i32 %1, 96
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sl_pm_data) #10
  br label %9

4:                                                ; preds = %0
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sll_pm_data) #10
  %5 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 63488, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %9

9:                                                ; preds = %7, %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6sx_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sx_pm_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx6ul_pm_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6ul_pm_data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx6_pm_stby_poweroff() #0 {
  %1 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #8
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = and i32 %4, -4
  %6 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %6, label %11 [
    i32 96, label %7
    i32 98, label %9
  ]

7:                                                ; preds = %0
  %8 = or i32 %5, 1862
  br label %13

9:                                                ; preds = %0
  %10 = or i32 %5, 1862
  br label %13

11:                                               ; preds = %0
  %12 = or i32 %5, 1858
  switch i32 %6, label %16 [
    i32 100, label %13
    i32 101, label %13
    i32 103, label %13
    i32 107, label %13
  ]

13:                                               ; preds = %11, %11, %11, %11, %9, %7
  %14 = phi i32 [ %12, %11 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ], [ %12, %11 ], [ %12, %11 ]
  %15 = or i32 %14, 524288
  br label %18

16:                                               ; preds = %11
  %17 = or i32 %5, 2099010
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %15, %13 ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %20 = load ptr, ptr @ccm_base, align 4
  %21 = getelementptr i8, ptr %20, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !9
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %22 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %26 = tail call i32 %25() #8
  br label %40

27:                                               ; preds = %18
  %28 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !13
  %29 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %29, i32 4608) #8, !srcloc !14
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %28, i32 2097152) #8, !srcloc !15
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !17
  %30 = load ptr, ptr @suspend_ocram_base, align 4
  %31 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %30, i32 0, i32 9, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %35() #8
  %36 = load ptr, ptr @suspend_ocram_base, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi ptr [ %36, %34 ], [ %30, %27 ]
  %39 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  tail call void %39(ptr noundef %38) #8
  br label %40

40:                                               ; preds = %37, %24
  br label %41

41:                                               ; preds = %41, %40
  %42 = phi i32 [ %43, %41 ], [ 1000, %40 ]
  %43 = add nsw i32 %42, -1
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #8
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %41

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_suspend_finish(i32 noundef %0) #0 {
  %2 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %6 = tail call i32 %5() #8
  br label %20

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !13
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %9, i32 4608) #8, !srcloc !14
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %8, i32 2097152) #8, !srcloc !15
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !17
  %10 = load ptr, ptr @suspend_ocram_base, align 4
  %11 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %10, i32 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #8
  %16 = load ptr, ptr @suspend_ocram_base, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %16, %14 ], [ %10, %7 ]
  %19 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  tail call void %19(ptr noundef %18) #8
  br label %20

20:                                               ; preds = %17, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @imx6q_suspend_init(ptr noundef readonly %0) unnamed_addr #3 section ".init.text" {
  tail call void @suspend_set_ops(ptr noundef nonnull @imx6q_pm_ops) #8
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.imx6q_suspend_init) #9
  br label %144

5:                                                ; preds = %1
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.imx6q_suspend_init) #9
  br label %144

10:                                               ; preds = %5
  %11 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %6) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.imx6q_suspend_init) #9
  br label %142

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %17 = tail call ptr @gen_pool_get(ptr noundef %16, ptr noundef null) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.imx6q_suspend_init) #9
  br label %140

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gen_pool, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gen_pool, ptr %17, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %17, i32 noundef 4096, ptr noundef %23, ptr noundef %25, ptr noundef null) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.imx6q_suspend_init) #9
  br label %140

30:                                               ; preds = %21
  %31 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %17, i32 noundef %26) #8
  %32 = tail call ptr @__arm_ioremap_exec(i32 noundef %31, i32 noundef 4096, i1 noundef zeroext false) #8
  store ptr %32, ptr @suspend_ocram_base, align 4
  %33 = getelementptr inbounds i8, ptr %32, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(336) %33, i8 0, i32 328, i1 false)
  store i32 %31, ptr %32, align 8
  %34 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @v7_cpu_resume to i32), i32 -2130706432, i32 8454144) #11, !srcloc !18
  %35 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 3
  store i32 336, ptr %36, align 4
  %37 = load ptr, ptr @ccm_base, align 4
  %38 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 7, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 4
  %40 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %39, ptr noundef %41) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.imx6q_suspend_init, i32 noundef %42) #9
  br label %140

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 5
  %48 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %47, ptr noundef %49) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.imx6q_suspend_init, i32 noundef %50) #9
  br label %136

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 6
  %56 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %55, ptr noundef %57) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.imx6q_suspend_init, i32 noundef %58) #9
  br label %132

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 8
  %64 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %63, ptr noundef %65) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.imx6q_suspend_init, i32 noundef %66) #9
  br label %128

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 9
  %76 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %75, ptr noundef nonnull %72) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.imx6q_suspend_init, i32 noundef %76) #9
  %80 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 8, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @iounmap(ptr noundef %81) #8
  br label %128

82:                                               ; preds = %74, %70
  %83 = tail call i32 @imx_mmdc_get_ddr_type() #8
  %84 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 2
  store i32 %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 10
  store i32 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.imx6_pm_socdata, ptr %0, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 6, i32 1
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ 0, %91 ], [ %103, %93 ]
  %95 = getelementptr i32, ptr %89, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 11, i32 %94
  store i32 %96, ptr %97, align 4
  %98 = load ptr, ptr %92, align 4
  %99 = load i32, ptr %95, align 4
  %100 = getelementptr i8, ptr %98, i32 %99
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !8
  %102 = getelementptr %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 11, i32 %94, i32 1
  store i32 %101, ptr %102, align 4
  %103 = add nuw i32 %94, 1
  %104 = load i32, ptr %87, align 8
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %93, label %106

106:                                              ; preds = %93, %82
  %107 = tail call i32 asm "", "=r,0"(ptr nonnull @imx6_suspend) #11, !srcloc !19
  %108 = load ptr, ptr @suspend_ocram_base, align 4
  %109 = getelementptr i8, ptr %108, i32 336
  %110 = ptrtoint ptr %109 to i32
  %111 = and i32 %110, 7
  %112 = icmp ne i32 %111, 0
  %113 = and i32 %107, 6
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %112, i1 true, i1 %114, !prof !11
  br i1 %115, label %116, label %117, !prof !11

116:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 573, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

117:                                              ; preds = %106
  %118 = and i32 %107, -2
  %119 = inttoptr i32 %118 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3760) %109, ptr noundef align 2 dereferenceable(3760) %119, i32 3760, i1 false)
  %120 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %121 = add i32 %110, 3760
  tail call void %120(i32 noundef %110, i32 noundef %121) #8
  %122 = load ptr, ptr @suspend_ocram_base, align 4
  %123 = getelementptr i8, ptr %122, i32 336
  %124 = ptrtoint ptr %123 to i32
  %125 = and i32 %107, 1
  %126 = or i32 %125, %124
  %127 = tail call ptr asm "", "=r,0"(i32 %126) #11, !srcloc !21
  store ptr %127, ptr @imx6_suspend_in_ocram_fn, align 4
  tail call void @__arm_iomem_set_ro(ptr noundef %122, i32 noundef 4096) #8
  br label %140

128:                                              ; preds = %78, %68
  %129 = phi i32 [ %66, %68 ], [ %76, %78 ]
  %130 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 6, i32 1
  %131 = load ptr, ptr %130, align 4
  tail call void @iounmap(ptr noundef %131) #8
  br label %132

132:                                              ; preds = %128, %60
  %133 = phi i32 [ %58, %60 ], [ %129, %128 ]
  %134 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 5, i32 1
  %135 = load ptr, ptr %134, align 4
  tail call void @iounmap(ptr noundef %135) #8
  br label %136

136:                                              ; preds = %132, %52
  %137 = phi i32 [ %50, %52 ], [ %133, %132 ]
  %138 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %32, i32 0, i32 4, i32 1
  %139 = load ptr, ptr %138, align 4
  tail call void @iounmap(ptr noundef %139) #8
  br label %140

140:                                              ; preds = %136, %117, %44, %28, %19
  %141 = phi i32 [ %42, %44 ], [ %137, %136 ], [ 0, %117 ], [ -12, %28 ], [ -19, %19 ]
  tail call void @put_device(ptr noundef %16) #8
  br label %142

142:                                              ; preds = %140, %13
  %143 = phi i32 [ %141, %140 ], [ -19, %13 ]
  tail call void @of_node_put(ptr noundef nonnull %6) #8
  br label %144

144:                                              ; preds = %142, %8, %3
  %145 = phi i32 [ %143, %142 ], [ -19, %8 ], [ -22, %3 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_cpu_resume() #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @imx6_pm_get_base(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !22
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = call i32 @of_address_to_resource(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  %15 = call ptr @ioremap(i32 noundef %10, i32 noundef %14) #8
  %16 = getelementptr inbounds %struct.imx6_pm_base, ptr %0, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  %18 = select i1 %17, i32 -12, i32 0
  br label %19

19:                                               ; preds = %9, %6
  %20 = phi i32 [ %7, %6 ], [ %18, %9 ]
  call void @of_node_put(ptr noundef nonnull %4) #8
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %20, %19 ], [ -19, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_mmdc_get_ddr_type() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_suspend(ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_iomem_set_ro(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @imx6q_pm_valid(i32 noundef %0) #7 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_pm_enter(i32 noundef %0) #0 {
  switch i32 %0, label %128 [
    i32 2, label %2
    i32 3, label %43
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr @ccm_base, align 4
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  %6 = and i32 %5, -324
  %7 = load i32, ptr @__mxc_cpu_type, align 4
  %8 = icmp eq i32 %7, 96
  %9 = select i1 %8, i32 6, i32 2
  %10 = or i32 %9, %6
  %11 = add i32 %7, -96
  %12 = icmp ult i32 %11, 12
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds [12 x i32], ptr @switch.table.imx6q_pm_enter, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %15, %13 ], [ 2097152, %2 ]
  %18 = or i32 %10, %17
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %19 = load ptr, ptr @ccm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !9
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %21 = load ptr, ptr @ccm_base, align 4
  %22 = getelementptr i8, ptr %21, i32 100
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !8
  %24 = or i32 %23, 131072
  %25 = load ptr, ptr @ccm_base, align 4
  %26 = getelementptr i8, ptr %25, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !9
  tail call void @imx_gpc_pre_suspend(i1 noundef zeroext false) #8
  %27 = load i32, ptr @__mxc_cpu_type, align 4
  %28 = icmp eq i32 %27, 96
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext true) #8
  br label %30

30:                                               ; preds = %29, %16
  %31 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %32 = tail call i32 %31() #8
  %33 = load i32, ptr @__mxc_cpu_type, align 4
  %34 = icmp eq i32 %33, 96
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext false) #8
  br label %36

36:                                               ; preds = %35, %30
  tail call void @imx_gpc_post_resume() #8
  %37 = load ptr, ptr @ccm_base, align 4
  %38 = getelementptr i8, ptr %37, i32 84
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !8
  %40 = and i32 %39, -4
  %41 = load ptr, ptr @ccm_base, align 4
  %42 = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !9
  br label %128

43:                                               ; preds = %1
  %44 = load ptr, ptr @ccm_base, align 4
  %45 = getelementptr i8, ptr %44, i32 84
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  %47 = and i32 %46, -4
  %48 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %48, label %53 [
    i32 96, label %49
    i32 98, label %51
  ]

49:                                               ; preds = %43
  %50 = or i32 %47, 1862
  br label %55

51:                                               ; preds = %43
  %52 = or i32 %47, 1862
  br label %55

53:                                               ; preds = %43
  %54 = or i32 %47, 1858
  switch i32 %48, label %58 [
    i32 100, label %55
    i32 101, label %55
    i32 103, label %55
    i32 107, label %55
  ]

55:                                               ; preds = %53, %53, %53, %53, %51, %49
  %56 = phi i32 [ %54, %53 ], [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ %54, %53 ], [ %54, %53 ]
  %57 = or i32 %56, 524288
  br label %60

58:                                               ; preds = %53
  %59 = or i32 %47, 2099010
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ %57, %55 ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %62 = load ptr, ptr @ccm_base, align 4
  %63 = getelementptr i8, ptr %62, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !9
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %64 = load ptr, ptr @ccm_base, align 4
  %65 = getelementptr i8, ptr %64, i32 100
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !8
  %67 = and i32 %66, -131073
  %68 = load ptr, ptr @ccm_base, align 4
  %69 = getelementptr i8, ptr %68, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !9
  %70 = load ptr, ptr @ccm_base, align 4
  %71 = getelementptr i8, ptr %70, i32 84
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !8
  %73 = or i32 %72, 65536
  %74 = load ptr, ptr @ccm_base, align 4
  %75 = getelementptr i8, ptr %74, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !9
  %76 = load ptr, ptr @ccm_base, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !8
  %78 = or i32 %77, 458752
  %79 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #8, !srcloc !9
  %80 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %60
  tail call void @imx_gpc_mask_all() #8
  %83 = load ptr, ptr @ccm_base, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !8
  %85 = or i32 %84, 134217728
  %86 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %85) #8, !srcloc !9
  %87 = load ptr, ptr @ccm_base, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !8
  %89 = or i32 %88, 132120576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %90 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #8, !srcloc !9
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  br label %92

92:                                               ; preds = %82, %60
  tail call void @imx_gpc_pre_suspend(i1 noundef zeroext true) #8
  tail call void @imx_anatop_pre_suspend() #8
  %93 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @imx6q_suspend_finish) #8
  %94 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %94, label %96 [
    i32 99, label %95
    i32 97, label %95
  ]

95:                                               ; preds = %92, %92
  tail call void @imx_smp_prepare() #8
  br label %96

96:                                               ; preds = %95, %92
  tail call void @imx_anatop_post_resume() #8
  tail call void @imx_gpc_post_resume() #8
  tail call void @imx_gpc_mask_all() #8
  %97 = load ptr, ptr @ccm_base, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !8
  %99 = and i32 %98, -134217729
  %100 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #8, !srcloc !9
  %101 = load ptr, ptr @ccm_base, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #8, !srcloc !8
  %103 = and i32 %102, -132120577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %104 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %103) #8, !srcloc !9
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  %106 = load ptr, ptr @ccm_base, align 4
  %107 = getelementptr i8, ptr %106, i32 84
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #8, !srcloc !8
  %109 = and i32 %108, -65537
  %110 = load ptr, ptr @ccm_base, align 4
  %111 = getelementptr i8, ptr %110, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !9
  %112 = load ptr, ptr @ccm_base, align 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !8
  %114 = and i32 %113, -458753
  %115 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #8, !srcloc !9
  %116 = load ptr, ptr @ccm_base, align 4
  %117 = getelementptr i8, ptr %116, i32 100
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #8, !srcloc !8
  %119 = or i32 %118, 131072
  %120 = load ptr, ptr @ccm_base, align 4
  %121 = getelementptr i8, ptr %120, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #8, !srcloc !9
  %122 = load ptr, ptr @ccm_base, align 4
  %123 = getelementptr i8, ptr %122, i32 84
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !8
  %125 = and i32 %124, -4
  %126 = load ptr, ptr @ccm_base, align 4
  %127 = getelementptr i8, ptr %126, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #8, !srcloc !9
  br label %128

128:                                              ; preds = %96, %36, %1
  %129 = phi i32 [ -22, %1 ], [ 0, %96 ], [ 0, %36 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_pre_suspend(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6sl_set_wait_clk(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_post_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_pre_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_smp_prepare() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_post_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 2401331}
!9 = !{i64 2400913}
!10 = !{i64 2153767661}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153783320, i64 2153783812, i64 2153783357, i64 2153783413, i64 2153783447, i64 2153783471, i64 2153783512, i64 2153783533, i64 2153783561, i64 2153783595}
!13 = !{i64 2153116186}
!14 = !{i64 2153109753, i64 2153109766}
!15 = !{i64 2153116458, i64 2153116471}
!16 = !{i64 2153119219}
!17 = !{i64 2153119278}
!18 = !{i64 2148743509, i64 2148743532, i64 2148743564, i64 2148743596, i64 2148743634, i64 2148743664}
!19 = !{i64 2153776131}
!20 = !{i64 2153777524, i64 2153778016, i64 2153777561, i64 2153777617, i64 2153777651, i64 2153777675, i64 2153777716, i64 2153777737, i64 2153777765, i64 2153777799}
!21 = !{i64 2153776626}
!22 = !{!"auto-init"}
