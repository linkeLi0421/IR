; ModuleID = '/llk/IR/arch/arm/mach-sunxi/mc_smp.c_pt.bc'
source_filename = "../arch/arm/mach-sunxi/mc_smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sunxi_mc_smp_data = type { ptr, ptr, i8 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_mc_smp_nodes = type { ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_mc_smp__219_914_sunxi_mc_smp_initearly = internal global ptr @sunxi_mc_smp_init, section ".initcallearly.init", align 4
@sunxi_mc_smp_first_comer = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"enable-method\00", align 1
@sunxi_mc_smp_data = internal unnamed_addr constant [2 x %struct.sunxi_mc_smp_data] [%struct.sunxi_mc_smp_data { ptr @.str.9, ptr @sun9i_a80_get_smp_nodes, i8 0 }, %struct.sunxi_mc_smp_data { ptr @.str.10, ptr @sun8i_a83t_get_smp_nodes, i8 1 }], section ".init.rodata", align 4
@is_a83t = internal unnamed_addr global i8 0, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: CCI-400 not available\0A\00", align 1
@__func__.sunxi_mc_smp_init = private unnamed_addr constant [18 x i8] c"sunxi_mc_smp_init\00", align 1
@prcm_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: failed to map PRCM registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"sunxi-mc-smp\00", align 1
@cpucfg_base = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\013%s: failed to map CPUCFG registers: %d\0A\00", align 1
@r_cpucfg_base = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"\013%s: failed to map R-CPUCFG registers\0A\00", align 1
@sram_b_smp_base = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"\013%s: failed to map secure SRAM\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\013%s: failed to configure boot cluster: %d\0A\00", align 1
@sunxi_mc_smp_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr @sunxi_mc_smp_secondary_init, ptr @sunxi_mc_smp_boot_secondary, ptr @sunxi_mc_smp_cpu_kill, ptr @sunxi_mc_smp_cpu_die, ptr @sunxi_mc_smp_cpu_can_disable, ptr null }, section ".init.rodata", align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"\016sunxi multi cluster SMP support installed\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"allwinner,sun9i-a80-smp\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"allwinner,sun8i-a83t-smp\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"allwinner,sun9i-a80-prcm\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\013%s: PRCM not available\0A\00", align 1
@__func__.sun9i_a80_get_smp_nodes = private unnamed_addr constant [24 x i8] c"sun9i_a80_get_smp_nodes\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"allwinner,sun9i-a80-cpucfg\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\013%s: CPUCFG not available\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"allwinner,sun9i-a80-smp-sram\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\013%s: Secure SRAM not available\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"allwinner,sun8i-a83t-r-ccu\00", align 1
@__func__.sun8i_a83t_get_smp_nodes = private unnamed_addr constant [25 x i8] c"sun8i_a83t_get_smp_nodes\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"allwinner,sun8i-a83t-cpucfg\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"allwinner,sun8i-a83t-r-cpucfg\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\013%s: RCPUCFG not available\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\013%s: boot CPU is out of bounds!\0A\00", align 1
@__func__.sunxi_mc_smp_cpu_table_init = private unnamed_addr constant [28 x i8] c"sunxi_mc_smp_cpu_table_init\00", align 1
@sunxi_mc_smp_cpu_table = internal unnamed_addr global [2 x [4 x i32]] zeroinitializer, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@boot_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [55 x i8] c"\013%s: Couldn't get CPU cluster %u core %u device node\0A\00", align 1
@__func__.sunxi_core_is_cortex_a15 = private unnamed_addr constant [25 x i8] c"sunxi_core_is_cortex_a15\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"arm,cortex-a15\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"arch/arm/mach-sunxi/mc_smp.c\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"\013Cluster %d CPU%d boots multiple times\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mc_smp__219_914_sunxi_mc_smp_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_init() #0 section ".init.text" {
  %1 = alloca %struct.sunxi_mc_smp_nodes, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = tail call ptr @get_cpu_device(i32 noundef 0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #8
  br label %11

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_node_get(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %10, %7 ], [ %6, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %117, label %14

14:                                               ; preds = %14, %11
  %15 = phi i1 [ true, %14 ], [ false, %11 ]
  %16 = phi i32 [ 1, %14 ], [ 0, %11 ]
  %17 = getelementptr [2 x %struct.sunxi_mc_smp_data], ptr @sunxi_mc_smp_data, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @of_property_match_string(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef %18) #8
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %20, %15
  br i1 %21, label %22, label %14

22:                                               ; preds = %14
  %23 = select i1 %20, i32 %16, i32 2
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i8
  store i8 %25, ptr @is_a83t, align 1
  tail call void @of_node_put(ptr noundef nonnull %12) #8
  br i1 %20, label %26, label %117

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i1 @sunxi_mc_smp_cpu_table_init() #9
  br i1 %27, label %28, label %117

28:                                               ; preds = %26
  %29 = tail call zeroext i1 @cci_probed() #8
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sunxi_mc_smp_init) #10
  br label %117

32:                                               ; preds = %28
  %33 = getelementptr [2 x %struct.sunxi_mc_smp_data], ptr @sunxi_mc_smp_data, i32 0, i32 %23, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef nonnull %1) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %32
  %38 = load ptr, ptr %1, align 4
  %39 = call ptr @of_iomap(ptr noundef %38, i32 noundef 0) #8
  store ptr %39, ptr @prcm_base, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.sunxi_mc_smp_init) #10
  br label %115

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call ptr @of_io_request_and_map(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.3) #8
  store ptr %46, ptr @cpucfg_base, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = ptrtoint ptr %46 to i32
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sunxi_mc_smp_init, i32 noundef %49) #10
  br label %112

51:                                               ; preds = %43
  %52 = load i8, ptr @is_a83t, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %1, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = call ptr @of_io_request_and_map(ptr noundef %56, i32 noundef 0, ptr noundef nonnull @.str.3) #8
  store ptr %57, ptr @r_cpucfg_base, align 4
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = ptrtoint ptr %57 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sunxi_mc_smp_init) #10
  br label %102

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %1, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call ptr @of_io_request_and_map(ptr noundef %64, i32 noundef 0, ptr noundef nonnull @.str.3) #8
  store ptr %65, ptr @sram_b_smp_base, align 4
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = ptrtoint ptr %65 to i32
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sunxi_mc_smp_init) #10
  br label %102

70:                                               ; preds = %62, %54
  %71 = call fastcc i32 @sunxi_mc_smp_loopback() #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.sunxi_mc_smp_init, i32 noundef %71) #10
  %75 = load i8, ptr @is_a83t, align 1, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %90, label %87

77:                                               ; preds = %70
  call fastcc void @sunxi_mc_smp_put_nodes(ptr noundef nonnull %1) #9
  %78 = load i8, ptr @is_a83t, align 1, !range !9
  %79 = icmp eq i8 %78, 0
  %80 = load ptr, ptr @r_cpucfg_base, align 4
  %81 = getelementptr i8, ptr %80, i32 420
  %82 = load ptr, ptr @prcm_base, align 4
  %83 = getelementptr i8, ptr %82, i32 356
  %84 = select i1 %79, ptr %83, ptr %81
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %85 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @sunxi_mc_smp_secondary_startup to i32), i32 -2130706432, i32 8454144) #11, !srcloc !11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %85) #8, !srcloc !12
  call void @smp_set_ops(ptr noundef nonnull @sunxi_mc_smp_smp_ops) #8
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %117

87:                                               ; preds = %73
  %88 = load ptr, ptr @r_cpucfg_base, align 4
  call void @iounmap(ptr noundef %88) #8
  %89 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %1, i32 0, i32 3
  br label %93

90:                                               ; preds = %73
  %91 = load ptr, ptr @sram_b_smp_base, align 4
  call void @iounmap(ptr noundef %91) #8
  %92 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %1, i32 0, i32 2
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi ptr [ %92, %90 ], [ %89, %87 ]
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 @of_address_to_resource(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %2) #8
  %97 = load i32, ptr %2, align 4
  %98 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 1, %97
  %101 = add i32 %100, %99
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %97, i32 noundef %101) #8
  br label %102

102:                                              ; preds = %93, %67, %59
  %103 = phi i32 [ %60, %59 ], [ %71, %93 ], [ %68, %67 ]
  %104 = load ptr, ptr @cpucfg_base, align 4
  call void @iounmap(ptr noundef %104) #8
  %105 = load ptr, ptr %44, align 4
  %106 = call i32 @of_address_to_resource(ptr noundef %105, i32 noundef 0, ptr noundef nonnull %2) #8
  %107 = load i32, ptr %2, align 4
  %108 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = sub i32 1, %107
  %111 = add i32 %110, %109
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %107, i32 noundef %111) #8
  br label %112

112:                                              ; preds = %102, %48
  %113 = phi i32 [ %49, %48 ], [ %103, %102 ]
  %114 = load ptr, ptr @prcm_base, align 4
  call void @iounmap(ptr noundef %114) #8
  br label %115

115:                                              ; preds = %112, %41, %32
  %116 = phi i32 [ %35, %32 ], [ %113, %112 ], [ -12, %41 ]
  call fastcc void @sunxi_mc_smp_put_nodes(ptr noundef nonnull %1) #9
  br label %117

117:                                              ; preds = %115, %77, %30, %26, %22, %11
  %118 = phi i32 [ %116, %115 ], [ 0, %77 ], [ -19, %30 ], [ -19, %11 ], [ -19, %22 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #8
  ret i32 %118
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sunxi_mc_smp_cpu_table_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #11, !srcloc !13
  %2 = and i32 %1, 255
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  %5 = icmp ugt i32 %4, 1
  %6 = icmp ugt i32 %2, 3
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.sunxi_mc_smp_cpu_table_init) #10
  br label %12

10:                                               ; preds = %0
  %11 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %4, i32 %2
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = xor i1 %7, true
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mc_smp_loopback() unnamed_addr #0 section ".init.text" {
  store i32 1, ptr @sunxi_mc_smp_first_comer, align 4
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !14
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #8, !srcloc !15
  %1 = tail call i32 @cpu_pm_enter() #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @nocache_trampoline) #8
  %5 = tail call i32 @cpu_pm_exit() #8
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %1, %0 ], [ %4, %3 ]
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  store i32 0, ptr @sunxi_mc_smp_first_comer, align 4
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_mc_smp_put_nodes(ptr nocapture noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  tail call void @of_node_put(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @of_node_put(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @of_node_put(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @of_node_put(ptr noundef %8) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunxi_mc_smp_secondary_startup() #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_get_smp_nodes(ptr nocapture noundef writeonly %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #8
  store ptr %2, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13) #8
  %6 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #8
  %10 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %4, %1
  %13 = phi ptr [ @.str.12, %1 ], [ @.str.14, %4 ], [ @.str.16, %8 ]
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %13, ptr noundef nonnull @__func__.sun9i_a80_get_smp_nodes) #10
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 0, %8 ], [ -19, %12 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_get_smp_nodes(ptr nocapture noundef writeonly %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17) #8
  store ptr %2, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18) #8
  %6 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19) #8
  %10 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %0, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %4, %1
  %13 = phi ptr [ @.str.12, %1 ], [ @.str.14, %4 ], [ @.str.20, %8 ]
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %13, ptr noundef nonnull @__func__.sun8i_a83t_get_smp_nodes) #10
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 0, %8 ], [ -19, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nocache_trampoline(i32 noundef %0) #5 section ".init.text" {
  tail call void @setup_mm_for_reboot() #8
  tail call fastcc void @sunxi_cluster_cache_disable_without_axi()
  %2 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 5), align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #11, !srcloc !11
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @sunxi_mc_smp_resume to i32), i32 -2130706432, i32 8454144) #11, !srcloc !11
  tail call void %5(i32 noundef %6, i1 noundef zeroext false) #12
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sunxi_cluster_cache_disable_without_axi() unnamed_addr #6 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !18
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568432
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0Aisb\0Adsb", "r"(i32 1024) #8, !srcloc !19
  br label %5

5:                                                ; preds = %4, %0
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !20
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #11, !srcloc !13
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunxi_mc_smp_resume() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mc_smp_secondary_init(i32 noundef %0) #6 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %4 = load ptr, ptr @sram_b_smp_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %5 = load ptr, ptr @sram_b_smp_base, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !12
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = lshr i32 %4, 8
  %7 = and i32 %6, 255
  %8 = load ptr, ptr @cpucfg_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %264, label %10

10:                                               ; preds = %2
  %11 = icmp ugt i32 %7, 1
  %12 = icmp ugt i32 %5, 3
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %264, label %14

14:                                               ; preds = %10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %15 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %7, i32 %5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %259

18:                                               ; preds = %14
  %19 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %7, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %18
  %23 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %22
  %27 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %7, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %26
  %31 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %7, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %30
  store i32 1, ptr @sunxi_mc_smp_first_comer, align 4
  %35 = load i8, ptr @is_a83t, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = shl nuw nsw i32 %7, 2
  br label %49

39:                                               ; preds = %34
  %40 = load ptr, ptr @cpucfg_base, align 4
  %41 = shl nuw nsw i32 %7, 2
  %42 = add nuw nsw i32 %41, 128
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %45 = and i32 %44, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %46 = load ptr, ptr @cpucfg_base, align 4
  %47 = getelementptr i8, ptr %46, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #8, !srcloc !12
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #8
  br label %49

49:                                               ; preds = %39, %37
  %50 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %51 = load ptr, ptr @cpucfg_base, align 4
  %52 = shl nuw nsw i32 %7, 4
  %53 = or i32 %52, 4
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %56 = or i32 %55, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr @cpucfg_base, align 4
  %58 = getelementptr i8, ptr %57, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !12
  %59 = load ptr, ptr @prcm_base, align 4
  %60 = add nuw nsw i32 %50, 4
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %63 = and i32 %62, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %64 = load ptr, ptr @prcm_base, align 4
  %65 = getelementptr i8, ptr %64, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !12
  %66 = load i8, ptr @is_a83t, align 1, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %49
  %69 = load ptr, ptr @r_cpucfg_base, align 4
  %70 = add nuw nsw i32 %50, 48
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %73 = and i32 %72, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %74 = load ptr, ptr @r_cpucfg_base, align 4
  %75 = getelementptr i8, ptr %74, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !12
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 2147480) #8
  br label %77

77:                                               ; preds = %68, %49
  %78 = load ptr, ptr @cpucfg_base, align 4
  %79 = add nuw nsw i32 %50, 128
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %82 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef 0, i32 noundef %7) #8
  %83 = select i1 %82, i32 -17764609, i32 -33493249
  %84 = and i32 %83, %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %85 = load ptr, ptr @cpucfg_base, align 4
  %86 = getelementptr i8, ptr %85, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #8, !srcloc !12
  %87 = load ptr, ptr @cpucfg_base, align 4
  %88 = getelementptr i8, ptr %87, i32 %52
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %90 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef 0, i32 noundef %7) #8
  %91 = select i1 %90, i32 -2, i32 -32
  %92 = and i32 %91, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %93 = load ptr, ptr @cpucfg_base, align 4
  %94 = getelementptr i8, ptr %93, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !12
  %95 = load ptr, ptr @prcm_base, align 4
  %96 = add nuw nsw i32 %50, 256
  %97 = getelementptr i8, ptr %95, i32 %96
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %99 = load i8, ptr @is_a83t, align 1, !range !9
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i32 -17, i32 -2
  %102 = and i32 %101, %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %103 = load ptr, ptr @prcm_base, align 4
  %104 = getelementptr i8, ptr %103, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #8, !srcloc !12
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 4294960) #8
  %106 = load ptr, ptr @cpucfg_base, align 4
  %107 = getelementptr i8, ptr %106, i32 %79
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  %109 = or i32 %108, 16781568
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %110 = load ptr, ptr @cpucfg_base, align 4
  %111 = getelementptr i8, ptr %110, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !12
  %112 = load ptr, ptr @cpucfg_base, align 4
  %113 = getelementptr i8, ptr %112, i32 %53
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %115 = and i32 %114, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %116 = load ptr, ptr @cpucfg_base, align 4
  %117 = getelementptr i8, ptr %116, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #8, !srcloc !12
  br label %119

118:                                              ; preds = %30, %26, %22, %18
  store i32 0, ptr @sunxi_mc_smp_first_comer, align 4
  br label %119

119:                                              ; preds = %118, %77
  %120 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %120(ptr noundef nonnull @sunxi_mc_smp_first_comer, i32 noundef 4) #8
  %121 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @sunxi_mc_smp_first_comer to i32), i32 -2130706432, i32 8454144) #11, !srcloc !11
  %122 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @sunxi_mc_smp_first_comer, i32 1) to i32), i32 -2130706432, i32 8454144) #11, !srcloc !11
  %123 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  tail call void %123(i32 noundef %121, i32 noundef %122) #8
  br label %126

126:                                              ; preds = %125, %119
  %127 = icmp eq i32 %5, 0
  %128 = or i32 %7, %5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %131 = load ptr, ptr @sram_b_smp_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 -95405777) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %132 = load ptr, ptr @sram_b_smp_base, align 4
  %133 = getelementptr i8, ptr %132, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 2030946874) #8, !srcloc !12
  br label %134

134:                                              ; preds = %130, %126
  %135 = load ptr, ptr @prcm_base, align 4
  %136 = shl nuw nsw i32 %7, 2
  %137 = add nuw nsw i32 %136, 4
  %138 = getelementptr i8, ptr %135, i32 %137
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !42
  %140 = shl nuw nsw i32 1, %5
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %143 = load ptr, ptr @prcm_base, align 4
  %144 = getelementptr i8, ptr %143, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #8, !srcloc !12
  %145 = load i8, ptr @is_a83t, align 1, !range !9
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %134
  %148 = load ptr, ptr @r_cpucfg_base, align 4
  %149 = add nuw nsw i32 %136, 48
  %150 = getelementptr i8, ptr %148, i32 %149
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !44
  %152 = and i32 %151, %141
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %153 = load ptr, ptr @r_cpucfg_base, align 4
  %154 = getelementptr i8, ptr %153, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #8, !srcloc !12
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 2147480) #8
  br label %156

156:                                              ; preds = %147, %134
  %157 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %5, i32 noundef %7) #8
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  %159 = shl nuw nsw i32 %7, 4
  br label %168

160:                                              ; preds = %156
  %161 = load ptr, ptr @cpucfg_base, align 4
  %162 = shl nuw nsw i32 %7, 4
  %163 = getelementptr i8, ptr %161, i32 %162
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !46
  %165 = and i32 %164, %141
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %166 = load ptr, ptr @cpucfg_base, align 4
  %167 = getelementptr i8, ptr %166, i32 %162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #8, !srcloc !12
  br label %168

168:                                              ; preds = %160, %158
  %169 = phi i32 [ %159, %158 ], [ %162, %160 ]
  %170 = load ptr, ptr @cpucfg_base, align 4
  %171 = add nuw nsw i32 %136, 128
  %172 = getelementptr i8, ptr %170, i32 %171
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %174 = shl nuw nsw i32 65536, %5
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %5, i32 noundef %7) #8
  %178 = shl nuw nsw i32 1048576, %5
  %179 = xor i32 %178, -1
  %180 = select i1 %177, i32 -1, i32 %179
  %181 = and i32 %176, %180
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %182 = load ptr, ptr @cpucfg_base, align 4
  %183 = getelementptr i8, ptr %182, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #8, !srcloc !12
  %184 = load ptr, ptr @prcm_base, align 4
  %185 = shl nuw nsw i32 %5, 2
  %186 = add nuw nsw i32 %185, 320
  %187 = add nuw nsw i32 %186, %169
  %188 = getelementptr i8, ptr %184, i32 %187
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !50
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %192 = load ptr, ptr @prcm_base, align 4
  %193 = getelementptr i8, ptr %192, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 255) #8, !srcloc !12
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 2147480) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %195 = load ptr, ptr @prcm_base, align 4
  %196 = getelementptr i8, ptr %195, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 254) #8, !srcloc !12
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 2147480) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %198 = load ptr, ptr @prcm_base, align 4
  %199 = getelementptr i8, ptr %198, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 248) #8, !srcloc !12
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %200(i32 noundef 2147480) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %201 = load ptr, ptr @prcm_base, align 4
  %202 = getelementptr i8, ptr %201, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 240) #8, !srcloc !12
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 2147480) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %204 = load ptr, ptr @prcm_base, align 4
  %205 = getelementptr i8, ptr %204, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 0) #8, !srcloc !12
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 2147480) #8
  br label %207

207:                                              ; preds = %191, %168
  %208 = load i8, ptr @is_a83t, align 1, !range !9
  %209 = icmp ne i8 %208, 0
  %210 = and i1 %127, %209
  %211 = select i1 %210, i32 4, i32 %5
  %212 = load ptr, ptr @prcm_base, align 4
  %213 = add nuw nsw i32 %136, 256
  %214 = getelementptr i8, ptr %212, i32 %213
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !56
  %216 = shl nuw nsw i32 1, %211
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %219 = load ptr, ptr @prcm_base, align 4
  %220 = getelementptr i8, ptr %219, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #8, !srcloc !12
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 4294960) #8
  %222 = load i8, ptr @is_a83t, align 1, !range !9
  %223 = icmp ne i8 %222, 0
  %224 = icmp eq i32 %211, 4
  %225 = and i1 %224, %223
  %226 = select i1 %225, i32 0, i32 %211
  %227 = load ptr, ptr @prcm_base, align 4
  %228 = getelementptr i8, ptr %227, i32 %137
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !58
  %230 = shl nuw nsw i32 1, %226
  %231 = or i32 %230, %229
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %232 = load ptr, ptr @prcm_base, align 4
  %233 = getelementptr i8, ptr %232, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #8, !srcloc !12
  %234 = load i8, ptr @is_a83t, align 1, !range !9
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %207
  %237 = load ptr, ptr @r_cpucfg_base, align 4
  %238 = add nuw nsw i32 %136, 48
  %239 = getelementptr i8, ptr %237, i32 %238
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !60
  %241 = or i32 %240, %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %242 = load ptr, ptr @r_cpucfg_base, align 4
  %243 = getelementptr i8, ptr %242, i32 %238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #8, !srcloc !12
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %244(i32 noundef 2147480) #8
  br label %245

245:                                              ; preds = %236, %207
  %246 = load ptr, ptr @cpucfg_base, align 4
  %247 = getelementptr i8, ptr %246, i32 %171
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !62
  %249 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %226, i32 noundef %7) #8
  %250 = select i1 %249, i32 4, i32 20
  %251 = add nuw nsw i32 %250, %226
  %252 = shl nuw nsw i32 1, %251
  %253 = shl nuw nsw i32 65537, %226
  %254 = or i32 %248, %253
  %255 = or i32 %254, %252
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %256 = load ptr, ptr @cpucfg_base, align 4
  %257 = getelementptr i8, ptr %256, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #8, !srcloc !12
  %258 = load i32, ptr %15, align 4
  br label %259

259:                                              ; preds = %245, %14
  %260 = phi i32 [ %16, %14 ], [ %258, %245 ]
  %261 = add i32 %260, 1
  store i32 %261, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %262 = load i16, ptr @boot_lock, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  br label %264

264:                                              ; preds = %259, %10, %2
  %265 = phi i32 [ 0, %259 ], [ -19, %2 ], [ -22, %10 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_cpu_kill(i32 noundef %0) #6 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %6, 1
  %8 = icmp ugt i32 %4, 3
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %11, !prof !68

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 547, i32 noundef 9, ptr noundef null) #8
  br label %119

11:                                               ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %12 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 %4
  %13 = shl nuw nsw i32 %6, 2
  %14 = add nuw nsw i32 %13, 48
  %15 = shl nuw nsw i32 65536, %4
  br label %16

16:                                               ; preds = %29, %11
  %17 = phi i1 [ true, %11 ], [ %31, %29 ]
  %18 = phi i32 [ 0, %11 ], [ %30, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %19 = load i16, ptr @boot_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %21 = load i32, ptr %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load ptr, ptr @cpucfg_base, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !69
  %27 = and i32 %26, %15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %16
  %30 = add nuw nsw i32 %18, 1
  %31 = icmp ult i32 %18, 999
  %32 = icmp eq i32 %30, 1000
  br i1 %32, label %114, label %16

33:                                               ; preds = %23
  %34 = load i8, ptr @is_a83t, align 1, !range !9
  %35 = icmp ne i8 %34, 0
  %36 = icmp eq i32 %4, 0
  %37 = and i1 %36, %35
  %38 = load ptr, ptr @prcm_base, align 4
  %39 = add nuw nsw i32 %13, 256
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !70
  %42 = shl nuw i32 1, %4
  %43 = select i1 %37, i32 16, i32 %42
  %44 = or i32 %43, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr @prcm_base, align 4
  %46 = getelementptr i8, ptr %45, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !12
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #8
  %48 = load ptr, ptr @prcm_base, align 4
  %49 = shl nuw nsw i32 %6, 4
  %50 = shl nuw nsw i32 %4, 2
  %51 = add nuw nsw i32 %50, 320
  %52 = add nuw nsw i32 %51, %49
  %53 = getelementptr i8, ptr %48, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr @prcm_base, align 4
  %56 = getelementptr i8, ptr %55, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 255) #8, !srcloc !12
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #8
  %58 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 0
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %114

61:                                               ; preds = %33
  %62 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %61
  %66 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %65
  %70 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %69
  %74 = tail call i64 @ktime_get() #8
  %75 = add i64 %74, 100000000
  %76 = load ptr, ptr @cpucfg_base, align 4
  %77 = getelementptr i8, ptr %76, i32 %14
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !73
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %84, %73
  %82 = tail call i64 @ktime_get() #8
  %83 = icmp sgt i64 %82, %75
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %85 = load ptr, ptr @cpucfg_base, align 4
  %86 = getelementptr i8, ptr %85, i32 %14
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !73
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %81, label %96

90:                                               ; preds = %81
  %91 = load ptr, ptr @cpucfg_base, align 4
  %92 = getelementptr i8, ptr %91, i32 %14
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !74
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %90, %84, %73
  %97 = load ptr, ptr @cpucfg_base, align 4
  %98 = add nuw nsw i32 %13, 128
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !75
  %101 = and i32 %100, -16781569
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %102 = load ptr, ptr @cpucfg_base, align 4
  %103 = getelementptr i8, ptr %102, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #8, !srcloc !12
  %104 = load ptr, ptr @prcm_base, align 4
  %105 = getelementptr i8, ptr %104, i32 %39
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !77
  %107 = load i8, ptr @is_a83t, align 1, !range !9
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i32 16, i32 1
  %110 = or i32 %109, %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %111 = load ptr, ptr @prcm_base, align 4
  %112 = getelementptr i8, ptr %111, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #8, !srcloc !12
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 4294960) #8
  br label %114

114:                                              ; preds = %96, %90, %69, %65, %61, %33, %29
  %115 = phi i1 [ %17, %65 ], [ %17, %61 ], [ %17, %33 ], [ %17, %90 ], [ %17, %69 ], [ %17, %96 ], [ %31, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %116 = load i16, ptr @boot_lock, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %118 = zext i1 %115 to i32
  br label %119

119:                                              ; preds = %114, %10
  %120 = phi i32 [ 0, %10 ], [ %118, %114 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mc_smp_cpu_die(i32 noundef %0) #6 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #8
  %7 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %12 = load i16, ptr @boot_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  ret void

14:                                               ; preds = %1
  %15 = icmp sgt i32 %9, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %6, i32 noundef %4) #10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-sunxi/mc_smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

18:                                               ; preds = %14
  %19 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %6, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %34 = load i16, ptr @boot_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %36 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #8
  br i1 %33, label %37, label %66

37:                                               ; preds = %30
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #11, !srcloc !13
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !18
  %40 = and i32 %39, -16711696
  %41 = icmp eq i32 %40, 1090568432
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0Aisb\0Adsb", "r"(i32 1024) #8, !srcloc !19
  br label %43

43:                                               ; preds = %42, %37
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !20
  %44 = zext i32 %38 to i64
  %45 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %44) #8
  %46 = load ptr, ptr @cpucfg_base, align 4
  %47 = lshr i32 %38, 4
  %48 = and i32 %47, 4080
  %49 = or i32 %48, 4
  %50 = getelementptr i8, ptr %46, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !81
  %52 = or i32 %51, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %53 = load ptr, ptr @cpucfg_base, align 4
  %54 = getelementptr i8, ptr %53, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #8, !srcloc !12
  br label %67

55:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %56 = load i16, ptr @boot_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  br label %64

58:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %59 = load i16, ptr @boot_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  br label %64

61:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !64
  %62 = load i16, ptr @boot_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !65
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #8
  br label %66

66:                                               ; preds = %64, %30
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !83
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %68, %67
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !84
  br label %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sunxi_mc_smp_cpu_can_disable(i32 noundef %0) #7 {
  %2 = load i8, ptr @is_a83t, align 1, !range !9
  %3 = icmp eq i8 %2, 0
  %4 = icmp ne i32 %0, 0
  %5 = or i1 %4, %3
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, %0
  %5 = tail call ptr @get_cpu_device(i32 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @of_get_cpu_node(i32 noundef %4, ptr noundef null) #8
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_node_get(ptr noundef %11) #8
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %12, %9 ], [ %8, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call ptr @of_get_cpu_node(i32 noundef %4, ptr noundef null) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sunxi_core_is_cortex_a15, i32 noundef %1, i32 noundef %0) #10
  br label %25

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %23 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %22, ptr noundef nonnull @.str.23) #8
  %24 = icmp ne i32 %23, 0
  tail call void @of_node_put(ptr noundef nonnull %22) #8
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i1 [ %24, %21 ], [ false, %19 ]
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { noreturn nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2152849063}
!11 = !{i64 2148829913, i64 2148829936, i64 2148829968, i64 2148830000, i64 2148830038, i64 2148830068}
!12 = !{i64 4595015}
!13 = !{i64 2152784134}
!14 = !{i64 799464}
!15 = !{i64 2152840672}
!16 = !{i64 2152840720}
!17 = !{i64 799274}
!18 = !{i64 2152781520}
!19 = !{i64 10768, i64 10802, i64 10812}
!20 = !{i64 2152819899, i64 2152819916, i64 2152819946, i64 2152819994, i64 2152820037, i64 2152820085, i64 2152820099, i64 2152820149, i64 2152820197, i64 2152820255, i64 2152820303, i64 2152820317, i64 2152820331}
!21 = !{i64 2152799326}
!22 = !{i64 4595433}
!23 = !{i64 2152810294}
!24 = !{i64 2152810540}
!25 = !{i64 2152811664}
!26 = !{i64 2152811981}
!27 = !{i64 2152812553}
!28 = !{i64 2152812788}
!29 = !{i64 2152813373}
!30 = !{i64 2152813621}
!31 = !{i64 2152814747}
!32 = !{i64 2152815256}
!33 = !{i64 2152815814}
!34 = !{i64 2152816205}
!35 = !{i64 2152816779}
!36 = !{i64 2152817178}
!37 = !{i64 2152818301}
!38 = !{i64 2152818786}
!39 = !{i64 2152819368}
!40 = !{i64 2152819685}
!41 = !{i64 2152798680}
!42 = !{i64 2152800495}
!43 = !{i64 2152800814}
!44 = !{i64 2152801399}
!45 = !{i64 2152801724}
!46 = !{i64 2152802826}
!47 = !{i64 2152803137}
!48 = !{i64 2152803713}
!49 = !{i64 2152804156}
!50 = !{i64 2152791508}
!51 = !{i64 2152792499}
!52 = !{i64 2152793483}
!53 = !{i64 2152794467}
!54 = !{i64 2152795451}
!55 = !{i64 2152796435}
!56 = !{i64 2152804736}
!57 = !{i64 2152805059}
!58 = !{i64 2152806172}
!59 = !{i64 2152806491}
!60 = !{i64 2152807076}
!61 = !{i64 2152807401}
!62 = !{i64 2152808527}
!63 = !{i64 2152809160}
!64 = !{i64 2149060417}
!65 = !{i64 2149056241}
!66 = !{i64 2149056316, i64 2149056343, i64 2149056390, i64 2149056412, i64 2149056440, i64 2149056460}
!67 = !{i64 2149084561}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2152833915}
!70 = !{i64 2152827410}
!71 = !{i64 2152827747}
!72 = !{i64 2152797419}
!73 = !{i64 2152835733}
!74 = !{i64 2152836136}
!75 = !{i64 2152829993}
!76 = !{i64 2152830478}
!77 = !{i64 2152831617}
!78 = !{i64 2152832016}
!79 = !{i64 2149083420}
!80 = !{i64 2152824951, i64 2152825444, i64 2152824988, i64 2152825044, i64 2152825078, i64 2152825102, i64 2152825143, i64 2152825164, i64 2152825192, i64 2152825226}
!81 = !{i64 2152822245}
!82 = !{i64 2152822562}
!83 = !{i64 2152825720, i64 2152825737, i64 2152825767, i64 2152825815, i64 2152825858, i64 2152825906, i64 2152825920, i64 2152825970, i64 2152826018, i64 2152826076, i64 2152826124, i64 2152826138, i64 2152826152}
!84 = !{i64 2152826378}
