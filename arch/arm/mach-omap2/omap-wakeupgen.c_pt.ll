; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap-wakeupgen.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-wakeupgen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_wakeupgen_ops = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@wakeupgen_base = internal unnamed_addr global ptr null, align 4
@omap_secure_apis = internal unnamed_addr global i1 false, align 4
@__of_table_ti_wakeupgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wakeupgen_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"arch/arm/mach-omap2/omap-wakeupgen.c\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"WakeupGen: Not supported on OMAP4430 ES1.0\0A\00", align 1
@irq_banks = internal unnamed_addr global i32 5, align 4
@max_irqs = internal unnamed_addr global i32 160, align 4
@omap4_wakeupgen_ops = internal global %struct.omap_wakeupgen_ops { ptr @omap4_irq_save_context, ptr @irq_sar_clear }, align 4
@wakeupgen_ops = internal unnamed_addr global ptr null, align 4
@omap5_wakeupgen_ops = internal global %struct.omap_wakeupgen_ops { ptr @omap5_irq_save_context, ptr @irq_sar_clear }, align 4
@am43xx_wakeupgen_ops = internal global %struct.omap_wakeupgen_ops { ptr @am43xx_irq_save_context, ptr @am43xx_irq_restore_context }, align 4
@wakeupgen_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wakeupgen_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @wakeupgen_domain_translate }, align 4
@irq_target_cpu = internal unnamed_addr global [224 x i32] zeroinitializer, align 4
@sar_base = internal unnamed_addr global ptr null, align 4
@wakeupgen_context = internal unnamed_addr global [7 x i32] zeroinitializer, align 4
@wakeupgen_chip = internal global %struct.irq_chip { ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wakeupgen_mask, ptr null, ptr @wakeupgen_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @wakeupgen_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"WUGEN\00", align 1
@wakeupgen_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"\014wakeupgen: irq%li polarity inverted in dts\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"arm/omap-wake:online\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"arm/omap-wake:dead\00", align 1
@irqmasks = internal global [7 x i32] zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@irq_notifier_block = internal global %struct.notifier_block { ptr @irq_notifier, ptr null, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013GIC and Wakeupgen context save failed\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ti_wakeupgen], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_get_wakeupgen_base() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wakeupgen_base, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_secure_apis_support() local_unnamed_addr #0 {
  %1 = load i1, ptr @omap_secure_apis, align 4
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wakeupgen_init(ptr noundef %0, ptr noundef %1) #1 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #12
  br label %106

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  %13 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %13, i8 0, i64 68, i1 false) #11
  store ptr %12, ptr %4, align 4
  %14 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %17, i8 0, i64 68, i1 false) #11
  store ptr %12, ptr %3, align 4
  %18 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #12
  br label %106

22:                                               ; preds = %16, %11
  %23 = phi ptr [ %18, %16 ], [ %14, %11 ]
  %24 = call i32 @omap_rev() #11
  %25 = icmp eq i32 %24, 1144000580
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 565, i32 noundef 9, ptr noundef nonnull @.str.3) #11
  br label %106

27:                                               ; preds = %22
  %28 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #11
  store ptr %28, ptr @wakeupgen_base, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 571, i32 noundef 9, ptr noundef null) #11
  br label %106

31:                                               ; preds = %27
  %32 = call i32 @omap_rev() #11
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 68
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 4, ptr @irq_banks, align 4
  store i32 128, ptr @max_irqs, align 4
  store i1 true, ptr @omap_secure_apis, align 4
  br label %45

36:                                               ; preds = %31
  %37 = call i32 @omap_rev() #11
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 84
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = call i32 @omap_rev() #11
  %42 = and i32 %41, -16777216
  %43 = icmp eq i32 %42, 1124073472
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  store i32 7, ptr @irq_banks, align 4
  store i32 224, ptr @max_irqs, align 4
  br label %45

45:                                               ; preds = %44, %36, %35
  %46 = phi ptr [ @am43xx_wakeupgen_ops, %44 ], [ @omap4_wakeupgen_ops, %35 ], [ @omap5_wakeupgen_ops, %36 ]
  store ptr %46, ptr @wakeupgen_ops, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, ptr @max_irqs, align 4
  %49 = icmp eq ptr %0, null
  %50 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %51 = select i1 %49, ptr null, ptr %50
  %52 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %23, i32 noundef 0, i32 noundef %48, ptr noundef %51, ptr noundef nonnull @wakeupgen_domain_ops, ptr noundef null) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, ptr @irq_banks, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %62

57:                                               ; preds = %47
  %58 = load ptr, ptr @wakeupgen_base, align 4
  call void @iounmap(ptr noundef %58) #11
  br label %106

59:                                               ; preds = %76, %54
  %60 = load i32, ptr @max_irqs, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %85, label %80

62:                                               ; preds = %76, %54
  %63 = phi i32 [ %77, %76 ], [ 0, %54 ]
  %64 = load ptr, ptr @wakeupgen_base, align 4
  %65 = getelementptr i8, ptr %64, i32 16
  %66 = shl i32 %63, 2
  %67 = and i32 %66, 1020
  %68 = getelementptr i8, ptr %65, i32 %67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #11, !srcloc !9
  %69 = call i32 @omap_rev() #11
  %70 = and i32 %69, -16777216
  %71 = icmp eq i32 %70, 1124073472
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr @wakeupgen_base, align 4
  %74 = getelementptr i8, ptr %73, i32 1040
  %75 = getelementptr i8, ptr %74, i32 %67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #11, !srcloc !9
  br label %76

76:                                               ; preds = %72, %62
  %77 = add nuw i32 %63, 1
  %78 = load i32, ptr @irq_banks, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %62, label %59

80:                                               ; preds = %80, %59
  %81 = phi i32 [ %83, %80 ], [ 0, %59 ]
  %82 = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %81
  store i32 %7, ptr %82, align 4
  %83 = add nuw i32 %81, 1
  %84 = icmp eq i32 %83, %60
  br i1 %84, label %85, label %80

85:                                               ; preds = %80, %59
  %86 = call i32 @omap_rev() #11
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %87, 84
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = call i32 @omap_rev() #11
  %91 = and i32 %90, -16777216
  %92 = icmp eq i32 %91, 117440512
  br i1 %92, label %93, label %98

93:                                               ; preds = %89, %85
  %94 = load ptr, ptr @wakeupgen_base, align 4
  %95 = getelementptr i8, ptr %94, i32 2060
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #11, !srcloc !10
  %97 = or i32 %96, 32
  call void @omap_smc1(i32 noundef 264, i32 noundef %97) #11
  br label %98

98:                                               ; preds = %93, %89
  call fastcc void @irq_hotplug_init() #13
  %99 = load i16, ptr @pm44xx_errata, align 2
  %100 = and i16 %99, 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @cpu_pm_register_notifier(ptr noundef nonnull @irq_notifier_block) #11
  br label %104

104:                                              ; preds = %102, %98
  %105 = call ptr @omap4_get_sar_ram_base() #11
  store ptr %105, ptr @sar_base, align 4
  br label %106

106:                                              ; preds = %104, %57, %30, %26, %20, %9
  %107 = phi i32 [ -1, %26 ], [ -12, %30 ], [ 0, %104 ], [ -12, %57 ], [ -6, %20 ], [ -19, %9 ]
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @irq_hotplug_init() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.6, i1 noundef zeroext false, ptr noundef nonnull @omap_wakeupgen_cpu_online, ptr noundef null, i1 noundef zeroext false) #11
  %2 = tail call i32 @__cpuhp_setup_state(i32 noundef 20, ptr noundef nonnull @.str.7, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @omap_wakeupgen_cpu_dead, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_irq_save_context() #7 {
  %1 = tail call i32 @omap_rev() #11
  %2 = icmp eq i32 %1, 1144000580
  br i1 %2, label %60, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @irq_banks, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %30, %6 ], [ 0, %3 ]
  %8 = load ptr, ptr @wakeupgen_base, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = shl i32 %7, 2
  %11 = and i32 %10, 1020
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  %14 = load ptr, ptr @sar_base, align 4
  %15 = getelementptr i8, ptr %14, i32 9860
  %16 = getelementptr i8, ptr %15, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #11, !srcloc !9
  %17 = load ptr, ptr @wakeupgen_base, align 4
  %18 = getelementptr i8, ptr %17, i32 1040
  %19 = getelementptr i8, ptr %18, i32 %11
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !10
  %21 = load ptr, ptr @sar_base, align 4
  %22 = getelementptr i8, ptr %21, i32 9892
  %23 = getelementptr i8, ptr %22, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #11, !srcloc !9
  %24 = load ptr, ptr @sar_base, align 4
  %25 = getelementptr i8, ptr %24, i32 9876
  %26 = getelementptr i8, ptr %25, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !9
  %27 = load ptr, ptr @sar_base, align 4
  %28 = getelementptr i8, ptr %27, i32 9908
  %29 = getelementptr i8, ptr %28, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #11, !srcloc !9
  %30 = add nuw i32 %7, 1
  %31 = load i32, ptr @irq_banks, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %6, label %33

33:                                               ; preds = %6, %3
  %34 = load ptr, ptr @wakeupgen_base, align 4
  %35 = getelementptr i8, ptr %34, i32 2048
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !10
  %37 = load ptr, ptr @sar_base, align 4
  %38 = getelementptr i8, ptr %37, i32 9924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !9
  %39 = load ptr, ptr @wakeupgen_base, align 4
  %40 = getelementptr i8, ptr %39, i32 2052
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !10
  %42 = load ptr, ptr @sar_base, align 4
  %43 = getelementptr i8, ptr %42, i32 9928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !9
  %44 = load ptr, ptr @wakeupgen_base, align 4
  %45 = getelementptr i8, ptr %44, i32 3072
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !10
  %47 = load ptr, ptr @sar_base, align 4
  %48 = getelementptr i8, ptr %47, i32 9932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !9
  %49 = load ptr, ptr @wakeupgen_base, align 4
  %50 = getelementptr i8, ptr %49, i32 3076
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !10
  %52 = load ptr, ptr @sar_base, align 4
  %53 = getelementptr i8, ptr %52, i32 9936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !9
  %54 = load ptr, ptr @sar_base, align 4
  %55 = getelementptr i8, ptr %54, i32 9472
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !10
  %57 = or i32 %56, 16
  %58 = load ptr, ptr @sar_base, align 4
  %59 = getelementptr i8, ptr %58, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #11, !srcloc !9
  br label %60

60:                                               ; preds = %33, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_sar_clear() #8 {
  %1 = tail call i32 @omap_rev() #11
  %2 = and i32 %1, -16777216
  %3 = icmp eq i32 %2, 117440512
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #11
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 84
  %8 = select i1 %7, i32 10240, i32 9472
  %9 = load ptr, ptr @sar_base, align 4
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !10
  %12 = and i32 %11, -17
  %13 = load ptr, ptr @sar_base, align 4
  %14 = getelementptr i8, ptr %13, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !9
  br label %15

15:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap5_irq_save_context() #7 {
  %1 = load i32, ptr @irq_banks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %30, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %27, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @wakeupgen_base, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = shl i32 %4, 2
  %8 = and i32 %7, 1020
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !10
  %11 = load ptr, ptr @sar_base, align 4
  %12 = getelementptr i8, ptr %11, i32 10716
  %13 = getelementptr i8, ptr %12, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #11, !srcloc !9
  %14 = load ptr, ptr @wakeupgen_base, align 4
  %15 = getelementptr i8, ptr %14, i32 1040
  %16 = getelementptr i8, ptr %15, i32 %8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !10
  %18 = load ptr, ptr @sar_base, align 4
  %19 = getelementptr i8, ptr %18, i32 10756
  %20 = getelementptr i8, ptr %19, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #11, !srcloc !9
  %21 = load ptr, ptr @sar_base, align 4
  %22 = getelementptr i8, ptr %21, i32 10736
  %23 = getelementptr i8, ptr %22, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #11, !srcloc !9
  %24 = load ptr, ptr @sar_base, align 4
  %25 = getelementptr i8, ptr %24, i32 10776
  %26 = getelementptr i8, ptr %25, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !9
  %27 = add nuw i32 %4, 1
  %28 = load i32, ptr @irq_banks, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %3, label %30

30:                                               ; preds = %3, %0
  %31 = load ptr, ptr @wakeupgen_base, align 4
  %32 = getelementptr i8, ptr %31, i32 2048
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  %34 = load ptr, ptr @sar_base, align 4
  %35 = getelementptr i8, ptr %34, i32 10796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !9
  %36 = load ptr, ptr @wakeupgen_base, align 4
  %37 = getelementptr i8, ptr %36, i32 2048
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !10
  %39 = load ptr, ptr @sar_base, align 4
  %40 = getelementptr i8, ptr %39, i32 10544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !9
  %41 = load ptr, ptr @sar_base, align 4
  %42 = getelementptr i8, ptr %41, i32 10240
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !10
  %44 = or i32 %43, 16
  %45 = load ptr, ptr @sar_base, align 4
  %46 = getelementptr i8, ptr %45, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am43xx_irq_save_context() #7 {
  %1 = load i32, ptr @irq_banks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %18, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %15, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @wakeupgen_base, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = shl i32 %4, 2
  %8 = and i32 %7, 1020
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !10
  %11 = getelementptr [7 x i32], ptr @wakeupgen_context, i32 0, i32 %4
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr @wakeupgen_base, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = getelementptr i8, ptr %13, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #11, !srcloc !9
  %15 = add nuw i32 %4, 1
  %16 = load i32, ptr @irq_banks, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %3, label %18

18:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am43xx_irq_restore_context() #8 {
  %1 = load i32, ptr @irq_banks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %12, %3 ], [ 0, %0 ]
  %5 = getelementptr [7 x i32], ptr @wakeupgen_context, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr @wakeupgen_base, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = shl i32 %4, 2
  %10 = and i32 %9, 1020
  %11 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %6) #11, !srcloc !9
  %12 = add nuw i32 %4, 1
  %13 = load i32, ptr @irq_banks, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %3, label %15

15:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeupgen_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #8 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %32

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 223
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %24, %19 ], [ 0, %17 ]
  %21 = add i32 %20, %1
  %22 = add i32 %20, %15
  %23 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @wakeupgen_chip, ptr noundef null) #11
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %19

26:                                               ; preds = %19, %17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %27 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.irq_domain, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %5, align 4
  %31 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #11
  br label %32

32:                                               ; preds = %26, %13, %9, %4
  %33 = phi i32 [ %31, %26 ], [ -22, %4 ], [ -22, %9 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wakeupgen_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %17, %13, %9, %4
  %27 = phi i32 [ 0, %21 ], [ -22, %13 ], [ -22, %17 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wakeupgen_mask(ptr noundef %0) #8 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #11
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 31
  %8 = load ptr, ptr @wakeupgen_base, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = shl i32 %6, 10
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = lshr i32 %4, 3
  %13 = and i32 %12, 1020
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !10
  %16 = shl nuw i32 1, %7
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load ptr, ptr @wakeupgen_base, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = getelementptr i8, ptr %20, i32 %10
  %22 = getelementptr i8, ptr %21, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %2) #11
  tail call void @irq_chip_mask_parent(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wakeupgen_unmask(ptr noundef %0) #8 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #11
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 31
  %8 = load ptr, ptr @wakeupgen_base, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = shl i32 %6, 10
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = lshr i32 %4, 3
  %13 = and i32 %12, 1020
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !10
  %16 = shl nuw i32 1, %7
  %17 = or i32 %15, %16
  %18 = load ptr, ptr @wakeupgen_base, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = getelementptr i8, ptr %19, i32 %10
  %21 = getelementptr i8, ptr %20, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %2) #11
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeupgen_irq_set_type(ptr noundef %0, i32 noundef %1) #8 {
  switch i32 %1, label %10 [
    i32 8, label %4
    i32 2, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i32 [ 1, %3 ], [ 4, %2 ]
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 7, label %10
    i32 119, label %10
  ]

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %7) #12
  br label %10

10:                                               ; preds = %8, %4, %4, %2
  %11 = phi i32 [ %5, %4 ], [ %5, %4 ], [ %5, %8 ], [ %1, %2 ]
  %12 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %11) #11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_wakeupgen_cpu_online(i32 noundef %0) #8 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #11
  %3 = load i32, ptr @irq_banks, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = shl i32 %0, 10
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %9 = phi i8 [ 0, %5 ], [ %15, %7 ]
  %10 = load ptr, ptr @wakeupgen_base, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = getelementptr i8, ptr %11, i32 %6
  %13 = shl nuw nsw i32 %8, 2
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #11, !srcloc !9
  %15 = add i8 %9, 1
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr @irq_banks, align 4
  %18 = icmp ugt i32 %17, %16
  br i1 %18, label %7, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %19
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %37, %23 ]
  %25 = phi i8 [ 0, %21 ], [ %36, %23 ]
  %26 = load i32, ptr %22, align 4
  %27 = add i32 %26, ptrtoint (ptr @irqmasks to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr [7 x i32], ptr %28, i32 0, i32 %24
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr @wakeupgen_base, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  %33 = getelementptr i8, ptr %32, i32 %6
  %34 = shl nuw nsw i32 %24, 2
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #11, !srcloc !9
  %36 = add i8 %25, 1
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr @irq_banks, align 4
  %39 = icmp ugt i32 %38, %37
  br i1 %39, label %23, label %40

40:                                               ; preds = %23, %19, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_wakeupgen_cpu_dead(i32 noundef %0) #8 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #11
  %3 = load i32, ptr @irq_banks, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = shl i32 %0, 10
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ 0, %5 ], [ %22, %8 ]
  %10 = phi i8 [ 0, %5 ], [ %21, %8 ]
  %11 = load ptr, ptr @wakeupgen_base, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = getelementptr i8, ptr %12, i32 %6
  %14 = shl nuw nsw i32 %9, 2
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !10
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, ptrtoint (ptr @irqmasks to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr [7 x i32], ptr %19, i32 0, i32 %9
  store i32 %16, ptr %20, align 4
  %21 = add i8 %10, 1
  %22 = zext i8 %21 to i32
  %23 = load i32, ptr @irq_banks, align 4
  %24 = icmp ugt i32 %23, %22
  br i1 %24, label %8, label %25

25:                                               ; preds = %8
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %36, %27 ], [ 0, %25 ]
  %29 = phi i8 [ %35, %27 ], [ 0, %25 ]
  %30 = load ptr, ptr @wakeupgen_base, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  %32 = getelementptr i8, ptr %31, i32 %6
  %33 = shl nuw nsw i32 %28, 2
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #11, !srcloc !9
  %35 = add i8 %29, 1
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr @irq_banks, align 4
  %38 = icmp ugt i32 %37, %36
  br i1 %38, label %27, label %39

39:                                               ; preds = %27, %25, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  switch i32 %1, label %42 [
    i32 3, label %4
    i32 5, label %27
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @omap_type() #11
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @omap_rev() #11
  %9 = and i32 %8, -16777216
  %10 = icmp eq i32 %9, 1124073472
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %4
  %12 = tail call i32 @omap_rev() #11
  %13 = and i32 %12, -16777216
  %14 = icmp ne i32 %13, 117440512
  %15 = load ptr, ptr @wakeupgen_ops, align 4
  %16 = icmp ne ptr %15, null
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load ptr, ptr %15, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  tail call void %19() #11
  br label %42

22:                                               ; preds = %7
  %23 = tail call i32 @omap_secure_dispatcher(i32 noundef 29, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %42

27:                                               ; preds = %3
  %28 = tail call i32 @omap_type() #11
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @omap_rev() #11
  %32 = and i32 %31, -16777216
  %33 = icmp eq i32 %32, 1124073472
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %27
  %35 = load ptr, ptr @wakeupgen_ops, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.omap_wakeupgen_ops, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39() #11
  br label %42

42:                                               ; preds = %41, %37, %34, %30, %25, %22, %21, %18, %11, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 959702}
!10 = !{i64 960120}
