; ModuleID = '/llk/IR/drivers/mfd/syscon.c_pt.bc'
source_filename = "../drivers/mfd/syscon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22device_node_to_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_device_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_node_to_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle_args:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle_args\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle_optional\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.syscon = type { ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_device_node_to_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_node_to_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_device_node_to_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_node_to_regmap to i32), ptr @__kstrtab_device_node_to_regmap, ptr @__kstrtabns_device_node_to_regmap }, section "___ksymtab_gpl+device_node_to_regmap", align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@__kstrtab_syscon_node_to_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_node_to_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_node_to_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_node_to_regmap to i32), ptr @__kstrtab_syscon_node_to_regmap, ptr @__kstrtabns_syscon_node_to_regmap }, section "___ksymtab_gpl+syscon_node_to_regmap", align 4
@__kstrtab_syscon_regmap_lookup_by_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_compatible to i32), ptr @__kstrtab_syscon_regmap_lookup_by_compatible, ptr @__kstrtabns_syscon_regmap_lookup_by_compatible }, section "___ksymtab_gpl+syscon_regmap_lookup_by_compatible", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle_args = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle_args to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle_args, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle_args }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle_args", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle_optional to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle_optional, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle_optional }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle_optional", align 4
@__initcall__kmod_syscon__166_330_syscon_init2 = internal global ptr @syscon_init, section ".initcall2.init", align 4
@syscon_list_slock = internal global %struct.spinlock zeroinitializer, align 4
@syscon_list = internal global %struct.list_head { ptr @syscon_list, ptr @syscon_list }, align 4
@syscon_regmap_config = internal unnamed_addr constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"native-endian\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%pOFn@%llx\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\013regmap init failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@syscon_driver = internal global %struct.platform_driver { ptr @syscon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @syscon_ids, i8 0 }, align 4
@syscon_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_syscon__166_330_syscon_init2, ptr @__ksymtab_device_node_to_regmap, ptr @__ksymtab_syscon_node_to_regmap, ptr @__ksymtab_syscon_regmap_lookup_by_compatible, ptr @__ksymtab_syscon_regmap_lookup_by_phandle, ptr @__ksymtab_syscon_regmap_lookup_by_phandle_args, ptr @__ksymtab_syscon_regmap_lookup_by_phandle_optional], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_node_to_regmap(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @device_node_get_regmap(ptr noundef %0, i1 noundef zeroext false)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @device_node_get_regmap(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap_config, align 4
  %5 = alloca %struct.resource, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @syscon_list_slock) #8
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ @syscon_list, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @syscon_list
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -8
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %18 = load i16, ptr @syscon_list_slock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @syscon_list_slock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %20 = icmp eq ptr %17, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %4, ptr noundef nonnull align 4 dereferenceable(172) @syscon_regmap_config, i32 172, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #8, !annotation !12
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 16) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %93, label %25

25:                                               ; preds = %21
  %26 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %25
  %29 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %90, label %31

31:                                               ; preds = %28
  %32 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %34, %31
  %41 = phi i32 [ 1, %31 ], [ 2, %34 ], [ 3, %37 ]
  %42 = getelementptr inbounds %struct.regmap_config, ptr %4, i32 0, i32 39
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 4, ptr %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %5, align 4
  %49 = zext i32 %48 to i64
  %50 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %0, i64 noundef %49) #8
  store ptr %50, ptr %4, align 4
  %51 = load i32, ptr %3, align 4
  %52 = getelementptr inbounds %struct.regmap_config, ptr %4, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = shl i32 %51, 3
  %54 = getelementptr inbounds %struct.regmap_config, ptr %4, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %5, align 4
  %58 = add i32 %56, 1
  %59 = add i32 %51, %57
  %60 = sub i32 %58, %59
  %61 = getelementptr inbounds %struct.regmap_config, ptr %4, i32 0, i32 19
  store i32 %60, ptr %61, align 4
  %62 = call ptr @__regmap_init_mmio_clk(ptr noundef null, ptr noundef null, ptr noundef nonnull %29, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #8
  %63 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %63) #8
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %67 = ptrtoint ptr %62 to i32
  br label %88

68:                                               ; preds = %47
  br i1 %1, label %69, label %78

69:                                               ; preds = %68
  %70 = call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #8
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = ptrtoint ptr %70 to i32
  %74 = icmp eq ptr %70, inttoptr (i32 -2 to ptr)
  br i1 %74, label %78, label %86

75:                                               ; preds = %69
  %76 = call i32 @regmap_mmio_attach_clk(ptr noundef %62, ptr noundef %70) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75, %72, %68
  %79 = getelementptr inbounds %struct.syscon, ptr %23, i32 0, i32 1
  store ptr %62, ptr %79, align 4
  store ptr %0, ptr %23, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @syscon_list_slock) #8
  %80 = getelementptr inbounds %struct.syscon, ptr %23, i32 0, i32 2
  %81 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscon_list, i32 0, i32 1), align 4
  store ptr %80, ptr getelementptr inbounds (%struct.list_head, ptr @syscon_list, i32 0, i32 1), align 4
  store ptr @syscon_list, ptr %80, align 8
  %82 = getelementptr inbounds %struct.syscon, ptr %23, i32 0, i32 2, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %80, ptr %81, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %83 = load i16, ptr @syscon_list_slock, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr @syscon_list_slock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %93

85:                                               ; preds = %75
  call void @clk_put(ptr noundef %70) #8
  br label %86

86:                                               ; preds = %85, %72
  %87 = phi i32 [ %73, %72 ], [ %76, %85 ]
  call void @regmap_exit(ptr noundef %62) #8
  br label %88

88:                                               ; preds = %86, %65
  %89 = phi i32 [ %67, %65 ], [ %87, %86 ]
  call void @iounmap(ptr noundef nonnull %29) #8
  br label %90

90:                                               ; preds = %88, %28, %25
  %91 = phi i32 [ %89, %88 ], [ -12, %25 ], [ -12, %28 ]
  call void @kfree(ptr noundef nonnull %23) #8
  %92 = inttoptr i32 %91 to ptr
  br label %93

93:                                               ; preds = %90, %78, %21
  %94 = phi ptr [ %92, %90 ], [ %23, %78 ], [ inttoptr (i32 -12 to ptr), %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %95

95:                                               ; preds = %93, %16
  %96 = phi ptr [ %17, %16 ], [ %94, %93 ]
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.syscon, ptr %96, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi ptr [ %100, %98 ], [ %96, %95 ]
  ret ptr %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @syscon_node_to_regmap(ptr noundef %0) #0 {
  %2 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @device_node_get_regmap(ptr noundef %0, i1 noundef zeroext true)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ inttoptr (i32 -22 to ptr), %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef %0) #0 {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %2, i1 noundef zeroext true) #8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ inttoptr (i32 -22 to ptr), %4 ]
  tail call void @of_node_put(ptr noundef nonnull %2) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !12
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  br i1 %7, label %9, label %19

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %0, %2 ], [ %8, %5 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %10, i1 noundef zeroext true) #8
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %12 ]
  call void @of_node_put(ptr noundef nonnull %10) #8
  br label %19

19:                                               ; preds = %17, %9, %5
  %20 = phi ptr [ %18, %17 ], [ inttoptr (i32 -19 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %5 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle_args(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !12
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %6 to ptr
  br label %25

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = call i32 @of_device_is_compatible(ptr noundef nonnull %11, ptr noundef nonnull @.str) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %11, i1 noundef zeroext true) #8
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ inttoptr (i32 -22 to ptr), %13 ]
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %5, i32 8
  %23 = shl nuw i32 %2, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 4 %22, i32 %23, i1 false)
  br label %24

24:                                               ; preds = %21, %18
  call void @of_node_put(ptr noundef nonnull %11) #8
  br label %25

25:                                               ; preds = %24, %10, %8
  %26 = phi ptr [ %9, %8 ], [ %19, %24 ], [ inttoptr (i32 -19 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  ret ptr %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !12
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  br i1 %7, label %9, label %21

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %0, %2 ], [ %8, %5 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @of_node_put(ptr noundef nonnull %10) #8
  br label %19

16:                                               ; preds = %12
  %17 = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %10, i1 noundef zeroext true) #8
  call void @of_node_put(ptr noundef nonnull %10) #8
  %18 = icmp eq ptr %17, inttoptr (i32 -19 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %15
  %20 = phi ptr [ %17, %16 ], [ inttoptr (i32 -22 to ptr), %15 ]
  br label %21

21:                                               ; preds = %19, %16, %9, %5
  %22 = phi ptr [ %20, %19 ], [ null, %9 ], [ null, %5 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @syscon_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @syscon_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_mmio_attach_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscon_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.regmap_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %2, ptr noundef nonnull align 4 dereferenceable(172) @syscon_regmap_config, i32 172, i1 false)
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %12, i32 noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %9, align 4
  %22 = add i32 %20, -3
  %23 = sub i32 %22, %21
  %24 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 19
  store i32 %23, ptr %24, align 4
  %25 = icmp eq ptr %5, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 4
  store ptr %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef nonnull %17, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #8
  %30 = getelementptr inbounds %struct.syscon, ptr %6, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  %33 = ptrtoint ptr %29 to i32
  br label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %32, %11, %8, %1
  %37 = phi i32 [ %33, %32 ], [ 0, %34 ], [ -12, %1 ], [ -2, %8 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2148884949}
!9 = !{i64 2148880773}
!10 = !{i64 2148880848, i64 2148880875, i64 2148880922, i64 2148880944, i64 2148880972, i64 2148880992}
!11 = !{i64 2148907952}
!12 = !{!"auto-init"}
