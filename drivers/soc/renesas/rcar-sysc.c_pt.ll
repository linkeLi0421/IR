; ModuleID = '/llk/IR/drivers/soc/renesas/rcar-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/rcar-sysc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_sysc_info = type { ptr, ptr, i32, i32, i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_pm_domains = type { %struct.genpd_onecell_data, [33 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rcar_sysc_area = type { ptr, i16, i8, i8, i32, i32 }
%struct.rcar_sysc_pd = type { %struct.generic_pm_domain, %struct.rcar_sysc_ch, i32, [0 x i8] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.61 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.61 = type { %struct.mutex }
%struct.rcar_sysc_ch = type { i16, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_rcar_sysc__220_446_rcar_sysc_pd_initearly = internal global ptr @rcar_sysc_pd_init, section ".initcallearly.init", align 4
@rcar_sysc_matches = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_sysc_info }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [24 x i8] c"renesas,cpg-mstp-clocks\00", align 1
@has_cpg_mstp = internal unnamed_addr global i8 0, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\014%pOF: Cannot map regs\0A\00", align 1
@rcar_sysc_base = internal unnamed_addr global ptr null, align 4
@rcar_sysc_extmask_offs = internal unnamed_addr global i32 0, align 4
@rcar_sysc_extmask_val = internal unnamed_addr global i32 0, align 4
@rcar_sysc_onecell_data = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\014Failed to add PM subdomain %s to parent %u\0A\00", align 1
@r8a7742_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7743_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7745_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a77470_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7779_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7790_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7791_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7792_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@r8a7794_sysc_info = external dso_local constant %struct.rcar_sysc_info, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@simple_qos_governor = external dso_local global %struct.dev_power_governor, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013Failed to init PM domain %s: %d\0A\00", align 1
@rcar_sysc_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_rcar_sysc__220_446_rcar_sysc_pd_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_init() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_sysc_matches, ptr noundef nonnull %1) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %94, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = call i32 %8() #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %92

13:                                               ; preds = %10, %4
  %14 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #10
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  store i8 %16, ptr @has_cpg_mstp, align 1
  %17 = call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #11
  br label %92

21:                                               ; preds = %13
  store ptr %17, ptr @rcar_sysc_base, align 4
  %22 = getelementptr inbounds %struct.rcar_sysc_info, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr @rcar_sysc_extmask_offs, align 4
  %24 = getelementptr inbounds %struct.rcar_sysc_info, ptr %7, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @rcar_sysc_extmask_val, align 4
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 144) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rcar_pm_domains, ptr %27, i32 0, i32 1
  store ptr %30, ptr %27, align 8
  %31 = getelementptr inbounds %struct.genpd_onecell_data, ptr %27, i32 0, i32 1
  store i32 33, ptr %31, align 4
  store ptr %27, ptr @rcar_sysc_onecell_data, align 4
  %32 = getelementptr inbounds %struct.rcar_sysc_info, ptr %7, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rcar_sysc_info, ptr %7, i32 0, i32 1
  br label %37

37:                                               ; preds = %83, %35
  %38 = phi i32 [ 0, %35 ], [ %84, %83 ]
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %37
  %44 = call i32 @strlen(ptr noundef nonnull %41)
  %45 = add i32 %44, 809
  %46 = call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %92, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %40, align 4
  %50 = add i32 %44, 1
  %51 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %46, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %51, ptr align 1 %49, i32 %50, i1 false)
  %52 = getelementptr inbounds %struct.generic_pm_domain, ptr %46, i32 0, i32 10
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %46, i32 0, i32 1
  store i16 %54, ptr %55, align 32
  %56 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %46, i32 0, i32 1, i32 1
  store i8 %57, ptr %58, align 2
  %59 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %46, i32 0, i32 1, i32 2
  store i8 %60, ptr %61, align 1
  %62 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %46, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = call fastcc i32 @rcar_sysc_pd_setup(ptr noundef nonnull %46) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %48
  %68 = load i8, ptr %59, align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr %struct.rcar_pm_domains, ptr %27, i32 0, i32 1, i32 %69
  store ptr %46, ptr %70, align 4
  %71 = getelementptr %struct.rcar_sysc_area, ptr %39, i32 %38, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = getelementptr %struct.rcar_pm_domains, ptr %27, i32 0, i32 1, i32 %72
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @pm_genpd_add_subdomain(ptr noundef %76, ptr noundef nonnull %46) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %40, align 4
  %81 = load i32, ptr %71, align 4
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %80, i32 noundef %81) #11
  br label %92

83:                                               ; preds = %74, %67, %37
  %84 = add nuw i32 %38, 1
  %85 = load i32, ptr %32, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %37, label %87

87:                                               ; preds = %83, %29
  %88 = call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %2, ptr noundef nonnull %27) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %91) #10
  br label %92

92:                                               ; preds = %90, %87, %79, %48, %43, %21, %19, %10
  %93 = phi i32 [ %11, %10 ], [ %88, %87 ], [ 0, %90 ], [ -12, %19 ], [ -12, %21 ], [ %77, %79 ], [ %65, %48 ], [ -12, %43 ]
  call void @of_node_put(ptr noundef nonnull %2) #10
  br label %94

94:                                               ; preds = %92, %0
  %95 = phi i32 [ %93, %92 ], [ -19, %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret i32 %95
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rcar_sysc_nullify(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 section ".init.text" {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %12, %3
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %7 = getelementptr %struct.rcar_sysc_area, ptr %0, i32 %6, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, %2
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr %struct.rcar_sysc_area, ptr %0, i32 %6
  store ptr null, ptr %11, align 4
  br label %15

12:                                               ; preds = %5
  %13 = add nuw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %10, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_sysc_power_down_cpu(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @rcar_sysc_onecell_data, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.genpd_onecell_data, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  br label %10

10:                                               ; preds = %28, %8
  %11 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %12 = getelementptr ptr, ptr %9, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 1, i32 1
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 1
  %27 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %26, i1 noundef zeroext false) #10
  br label %31

28:                                               ; preds = %20, %15, %10
  %29 = add nuw i32 %11, 1
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %31, label %10

31:                                               ; preds = %28, %25, %4, %1
  %32 = phi i32 [ %27, %25 ], [ -19, %1 ], [ -2, %4 ], [ -2, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_sysc_power_up_cpu(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @rcar_sysc_onecell_data, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.genpd_onecell_data, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  br label %10

10:                                               ; preds = %28, %8
  %11 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %12 = getelementptr ptr, ptr %9, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 1, i32 1
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %13, i32 0, i32 1
  %27 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %26, i1 noundef zeroext true) #10
  br label %31

28:                                               ; preds = %20, %15, %10
  %29 = add nuw i32 %11, 1
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %31, label %10

31:                                               ; preds = %28, %25, %4, %1
  %32 = phi i32 [ %27, %25 ], [ -19, %1 ], [ -2, %4 ], [ -2, %28 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rcar_sysc_pd_setup(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 4
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = and i32 %5, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 9
  store i32 %18, ptr %16, align 4
  %19 = load i8, ptr @has_cpg_mstp, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 30
  %22 = select i1 %20, ptr @cpg_mssr_attach_dev, ptr @cpg_mstp_attach_dev
  %23 = select i1 %20, ptr @cpg_mssr_detach_dev, ptr @cpg_mstp_detach_dev
  store ptr %22, ptr %21, align 4
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 31
  store ptr %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %15, %12
  %26 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 18
  store ptr @rcar_sysc_pd_power_off, ptr %26, align 4
  %27 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 19
  store ptr @rcar_sysc_pd_power_on, ptr %27, align 8
  %28 = and i32 %5, 5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr @rcar_sysc_base, align 4
  %33 = load i16, ptr %31, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %37 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %0, i32 0, i32 1, i32 1
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %31, i1 noundef zeroext true)
  br label %45

45:                                               ; preds = %43, %30, %25
  %46 = tail call i32 @pm_genpd_init(ptr noundef %0, ptr noundef nonnull @simple_qos_governor, i1 noundef zeroext false) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %46) #11
  br label %50

50:                                               ; preds = %48, %45
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mstp_attach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_detach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mssr_attach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mssr_detach_dev(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_power_off(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %0, i32 0, i32 1
  %3 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %2, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_sysc_pd_power_on(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.rcar_sysc_pd, ptr %0, i32 0, i32 1
  %3 = tail call fastcc i32 @rcar_sysc_power(ptr noundef %2, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_sysc_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rcar_sysc_ch, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.rcar_sysc_ch, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcar_sysc_lock) #10
  %12 = load i32, ptr @rcar_sysc_extmask_val, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @rcar_sysc_base, align 4
  %16 = load i32, ptr @rcar_sysc_extmask_offs, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %12) #10, !srcloc !13
  br label %18

18:                                               ; preds = %14, %2
  %19 = load ptr, ptr @rcar_sysc_base, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %22 = or i32 %21, %6
  %23 = load ptr, ptr @rcar_sysc_base, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #10, !srcloc !13
  %25 = load ptr, ptr @rcar_sysc_base, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %28 = or i32 %27, %6
  %29 = load ptr, ptr @rcar_sysc_base, align 4
  %30 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !13
  %31 = load ptr, ptr @rcar_sysc_base, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %6) #10, !srcloc !13
  %33 = select i1 %1, i32 12, i32 4
  %34 = zext i1 %1 to i32
  %35 = shl nuw nsw i32 1, %34
  br label %36

36:                                               ; preds = %75, %18
  %37 = phi i32 [ 0, %18 ], [ %77, %75 ]
  %38 = tail call i64 @ktime_get() #10
  %39 = add i64 %38, 100000
  %40 = load ptr, ptr @rcar_sysc_base, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %42 = and i32 %41, %35
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %47, %36
  %45 = tail call i64 @ktime_get() #10
  %46 = icmp sgt i64 %45, %39
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  %49 = load ptr, ptr @rcar_sysc_base, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %51 = and i32 %50, %35
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %44, label %58

53:                                               ; preds = %44
  %54 = load ptr, ptr @rcar_sysc_base, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %56 = and i32 %55, %35
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %110, label %58

58:                                               ; preds = %53, %47, %36
  %59 = load i8, ptr %7, align 2
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 1, %60
  %62 = load ptr, ptr @rcar_sysc_base, align 4
  %63 = load i16, ptr %0, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %62, i32 %33
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %61) #10, !srcloc !13
  %67 = load ptr, ptr @rcar_sysc_base, align 4
  %68 = load i16, ptr %0, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %67, i32 20
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %73 = and i32 %72, %10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %58
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #10
  %77 = add nuw nsw i32 %37, 1
  %78 = icmp eq i32 %77, 100
  br i1 %78, label %110, label %36

79:                                               ; preds = %58
  %80 = icmp eq i32 %37, 100
  br i1 %80, label %110, label %81

81:                                               ; preds = %79
  %82 = tail call i64 @ktime_get() #10
  %83 = add i64 %82, 1000000
  %84 = load ptr, ptr @rcar_sysc_base, align 4
  %85 = getelementptr i8, ptr %84, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %87 = and i32 %86, %6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %92, %81
  %90 = tail call i64 @ktime_get() #10
  %91 = icmp sgt i64 %90, %83
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #10
  %94 = load ptr, ptr @rcar_sysc_base, align 4
  %95 = getelementptr i8, ptr %94, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %97 = and i32 %96, %6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %89, label %106

99:                                               ; preds = %89
  %100 = load ptr, ptr @rcar_sysc_base, align 4
  %101 = getelementptr i8, ptr %100, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %103 = and i32 %102, %6
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 -5, i32 0
  br label %106

106:                                              ; preds = %99, %92, %81
  %107 = phi i32 [ 0, %81 ], [ %105, %99 ], [ 0, %92 ]
  %108 = load ptr, ptr @rcar_sysc_base, align 4
  %109 = getelementptr i8, ptr %108, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %6) #10, !srcloc !13
  br label %110

110:                                              ; preds = %106, %79, %75, %53
  %111 = phi i32 [ %107, %106 ], [ -5, %79 ], [ -5, %75 ], [ -11, %53 ]
  %112 = load i32, ptr @rcar_sysc_extmask_val, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr @rcar_sysc_base, align 4
  %116 = load i32, ptr @rcar_sysc_extmask_offs, align 4
  %117 = getelementptr i8, ptr %115, i32 %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 0) #10, !srcloc !13
  br label %118

118:                                              ; preds = %114, %110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcar_sysc_lock, i32 noundef %11) #10
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }

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
!10 = !{i64 4726243}
!11 = !{i64 2152258206}
!12 = !{i64 2152259428}
!13 = !{i64 4725825}
!14 = !{i64 2152676735}
!15 = !{i64 2152677081}
!16 = !{i64 2152680769}
!17 = !{i64 2152681115}
