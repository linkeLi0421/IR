; ModuleID = '/llk/IR/drivers/soc/aspeed/aspeed-lpc-ctrl.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-lpc-ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_lpc_ctrl = type { %struct.miscdevice, ptr, ptr, i32, i32, i32, i32, i8, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.aspeed_lpc_ctrl_mapping = type { i8, i8, i16, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@aspeed_lpc_ctrl_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license219 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author220 = internal constant [38 x i8] c"author=Cyril Bur <cyrilbur@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [56 x i8] c"description=Control for ASPEED LPC HOST to BMC mappings\00", section ".modinfo", align 1
@aspeed_lpc_ctrl_driver = internal global %struct.platform_driver { ptr @aspeed_lpc_ctrl_probe, ptr @aspeed_lpc_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_lpc_ctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"aspeed-lpc-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't address to resource for flash\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Reserved memory size must be a power of 2, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Reserved memory must be naturally aligned for size %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"aspeed,ast2400-lpc-v2\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"aspeed,ast2500-lpc-v2\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"aspeed,ast2600-lpc-v2\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"unsupported LPC device binding\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"aspeed,ast2600-lpc-ctrl\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"aspeed,ast2600-scu\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"couldn't find scu\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"couldn't enable clock\0A\00", align 1
@aspeed_lpc_ctrl_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_lpc_ctrl_ioctl, ptr null, ptr @aspeed_lpc_ctrl_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author220, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_license219], section "llvm.metadata"

@__mod_of__aspeed_lpc_ctrl_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @aspeed_lpc_ctrl_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_lpc_ctrl_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_lpc_ctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 72, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %113, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %12 = icmp ne i32 %11, 0
  %13 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %8
  %17 = call i32 @of_address_to_resource(ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %13) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  br label %113

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %4, align 4
  %24 = add i32 %22, 1
  %25 = sub i32 %24, %23
  %26 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 6
  store i32 %23, ptr %27, align 4
  br label %28

28:                                               ; preds = %20, %8
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %29, align 8
  %30 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %32 = icmp ne i32 %31, 0
  %33 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %28
  %37 = call i32 @of_address_to_resource(ptr noundef nonnull %33, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %33) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %113

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %4, align 4
  %44 = add i32 %42, 1
  %45 = sub i32 %44, %43
  %46 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 3
  store i32 %43, ptr %47, align 4
  %48 = icmp ne i32 %44, %43
  %49 = call i32 @llvm.ctpop.i32(i32 %45) #8, !range !9
  %50 = icmp ult i32 %49, 2
  %51 = and i1 %48, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %45) #9
  br label %113

53:                                               ; preds = %40
  %54 = add i32 %45, -1
  %55 = and i32 %54, %43
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %45) #9
  br label %113

58:                                               ; preds = %53, %28
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 25
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 @of_device_is_compatible(ptr noundef %62, ptr noundef nonnull @.str.7) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = call i32 @of_device_is_compatible(ptr noundef %62, ptr noundef nonnull @.str.8) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i32 @of_device_is_compatible(ptr noundef %62, ptr noundef nonnull @.str.9) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #9
  br label %113

72:                                               ; preds = %68, %65, %58
  %73 = call ptr @syscon_node_to_regmap(ptr noundef %62) #8
  %74 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #9
  br label %113

77:                                               ; preds = %72
  %78 = load ptr, ptr %9, align 8
  %79 = call i32 @of_device_is_compatible(ptr noundef %78, ptr noundef nonnull @.str.12) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 7
  store i8 1, ptr %82, align 4
  %83 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.13) #8
  %84 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 8
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #9
  %87 = load ptr, ptr %84, align 4
  %88 = ptrtoint ptr %87 to i32
  br label %113

89:                                               ; preds = %81, %77
  %90 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #8
  %91 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 2
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = ptrtoint ptr %90 to i32
  %95 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %94, ptr noundef nonnull @.str.15) #8
  br label %113

96:                                               ; preds = %89
  %97 = call i32 @clk_prepare(ptr noundef %90) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i32 @clk_enable(ptr noundef %90) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  call void @clk_unprepare(ptr noundef %90) #8
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i32 [ %100, %102 ], [ %97, %96 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16) #9
  br label %113

105:                                              ; preds = %99
  store i32 255, ptr %6, align 4
  %106 = getelementptr inbounds %struct.miscdevice, ptr %6, i32 0, i32 1
  store ptr @.str, ptr %106, align 4
  %107 = getelementptr inbounds %struct.miscdevice, ptr %6, i32 0, i32 2
  store ptr @aspeed_lpc_ctrl_fops, ptr %107, align 4
  %108 = getelementptr inbounds %struct.miscdevice, ptr %6, i32 0, i32 4
  store ptr %5, ptr %108, align 4
  %109 = call i32 @misc_register(ptr noundef nonnull %6) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #9
  %112 = load ptr, ptr %91, align 4
  call void @clk_disable(ptr noundef %112) #8
  call void @clk_unprepare(ptr noundef %112) #8
  br label %113

113:                                              ; preds = %111, %105, %103, %93, %86, %76, %71, %57, %52, %39, %19, %1
  %114 = phi i32 [ %17, %19 ], [ -6, %39 ], [ -19, %76 ], [ %88, %86 ], [ %95, %93 ], [ %104, %103 ], [ %109, %111 ], [ -19, %71 ], [ -22, %57 ], [ -22, %52 ], [ -12, %1 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @misc_deregister(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.aspeed_lpc_ctrl_mapping, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 16, i32 -1090519040) #10
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !10

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #8
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !11
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %7, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %11, %3
  %20 = phi i32 [ %17, %11 ], [ 16, %3 ]
  %21 = sub i32 16, %20
  %22 = getelementptr i8, ptr %4, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #8
  br label %119

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %119

27:                                               ; preds = %23
  switch i32 %1, label %119 [
    i32 -1072647680, label %28
    i32 1074835969, label %47
  ]

28:                                               ; preds = %27
  %29 = load i8, ptr %4, align 4
  %30 = icmp eq i8 %29, 2
  %31 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %119

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %119, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 5
  store i32 %37, ptr %40, align 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !11
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %44 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -14
  br label %119

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %119

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %52
  %58 = add i32 %49, -1
  %59 = and i32 %54, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %119

61:                                               ; preds = %57
  %62 = load i8, ptr %4, align 4
  switch i8 %62, label %119 [
    i8 1, label %63
    i8 2, label %69
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %119, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 6
  br label %75

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %119, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 3
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %68, %67 ], [ %74, %73 ]
  %77 = phi i32 [ %65, %67 ], [ %71, %73 ]
  %78 = load i32, ptr %76, align 4
  %79 = add i32 %54, %49
  %80 = icmp ult i32 %79, %54
  %81 = icmp ugt i32 %79, %77
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %119, label %83

83:                                               ; preds = %75
  %84 = icmp eq i32 %49, 0
  %85 = icmp ugt i32 %49, %77
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %119, label %87

87:                                               ; preds = %83
  %88 = add i32 %78, %54
  %89 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %4, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 16
  %94 = or i32 %93, %88
  %95 = call i32 @regmap_write(ptr noundef %90, i32 noundef 136, i32 noundef %94) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %87
  %98 = load ptr, ptr %89, align 4
  %99 = load i32, ptr %48, align 4
  %100 = sub i32 0, %99
  %101 = lshr i32 %99, 16
  %102 = add nsw i32 %101, -1
  %103 = or i32 %102, %100
  %104 = call i32 @regmap_write(ptr noundef %98, i32 noundef 140, i32 noundef %103) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 7
  %108 = load i8, ptr %107, align 4, !range !14
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %6, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  %113 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 216, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %114 = load ptr, ptr %89, align 4
  %115 = call i32 @regmap_write(ptr noundef %114, i32 noundef 132, i32 noundef 131072) #8
  br label %116

116:                                              ; preds = %110, %106
  %117 = load ptr, ptr %89, align 4
  %118 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 128, i32 noundef 1280, i32 noundef 1280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %119

119:                                              ; preds = %116, %97, %87, %83, %75, %69, %63, %61, %57, %52, %47, %39, %35, %28, %27, %23, %19
  %120 = phi i32 [ %118, %116 ], [ -22, %23 ], [ -22, %28 ], [ -6, %35 ], [ -22, %52 ], [ -22, %47 ], [ -22, %57 ], [ -6, %63 ], [ -6, %69 ], [ -22, %61 ], [ -22, %75 ], [ -22, %83 ], [ %95, %87 ], [ %104, %97 ], [ -22, %27 ], [ -14, %19 ], [ %46, %39 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %6, %7
  %11 = lshr i32 %10, 12
  %12 = add i32 %11, %9
  %13 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 12
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -61
  %21 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 12
  %24 = add i32 %23, %9
  %25 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %7, i32 noundef %24, i32 noundef %10, i32 noundef %20) #8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 -11
  br label %28

28:                                               ; preds = %17, %2
  %29 = phi i32 [ -22, %2 ], [ %27, %17 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4495675}
!12 = !{i64 4495872}
!13 = !{i64 2151981151}
!14 = !{i8 0, i8 2}
