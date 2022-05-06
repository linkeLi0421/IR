; ModuleID = '/llk/IR/drivers/soc/aspeed/aspeed-p2a-ctrl.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-p2a-ctrl.c"
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
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_p2a_model_data = type { [6 x %struct.region] }
%struct.region = type { i64, i64, i32 }
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
%struct.aspeed_p2a_ctrl = type { %struct.miscdevice, ptr, ptr, %struct.mutex, i32, [6 x i32], i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.aspeed_p2a_ctrl_mapping = type { i64, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.aspeed_p2a_user = type { ptr, ptr, i32, [6 x i32] }
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

@aspeed_p2a_ctrl_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-p2a-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-p2a-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license220 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [44 x i8] c"author=Patrick Venture <venture@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [70 x i8] c"description=Control for aspeed 2400/2500 P2A VGA HOST to BMC mappings\00", section ".modinfo", align 1
@aspeed_p2a_ctrl_driver = internal global %struct.platform_driver { ptr @aspeed_p2a_ctrl_probe, ptr @aspeed_p2a_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_p2a_ctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"aspeed-p2a-ctrl\00", align 1
@aspeed_p2a_ctrl_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"&misc_ctrl->tracking\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@aspeed_p2a_ctrl_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_p2a_ioctl, ptr null, ptr @aspeed_p2a_mmap, i32 0, ptr @aspeed_p2a_open, ptr null, ptr @aspeed_p2a_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ast2400_model_data = internal constant %struct.aspeed_p2a_model_data { [6 x %struct.region] [%struct.region { i64 0, i64 402653183, i32 4194304 }, %struct.region { i64 402653184, i64 536870911, i32 8388608 }, %struct.region { i64 536870912, i64 805306367, i32 4194304 }, %struct.region { i64 805306368, i64 1073741823, i32 16777216 }, %struct.region { i64 1073741824, i64 1610612735, i32 33554432 }, %struct.region { i64 1610612736, i64 4294967295, i32 8388608 }] }, align 8
@ast2500_model_data = internal constant %struct.aspeed_p2a_model_data { [6 x %struct.region] [%struct.region { i64 0, i64 268435455, i32 4194304 }, %struct.region { i64 268435456, i64 536870911, i32 8388608 }, %struct.region { i64 536870912, i64 1073741823, i32 4194304 }, %struct.region { i64 1073741824, i64 1610612735, i32 8388608 }, %struct.region { i64 1610612736, i64 2147483647, i32 16777216 }, %struct.region { i64 2147483648, i64 4294967295, i32 33554432 }] }, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_license220], section "llvm.metadata"

@__mod_of__aspeed_p2a_ctrl_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @aspeed_p2a_ctrl_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_p2a_ctrl_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_p2a_ctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 104, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_p2a_ctrl_probe.__key) #8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %12 = icmp ne i32 %11, 0
  %13 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %7
  %17 = call i32 @of_address_to_resource(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %3) #8
  call void @of_node_put(ptr noundef nonnull %13) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %3, align 4
  %23 = add i32 %21, 1
  %24 = sub i32 %23, %22
  %25 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %5, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %5, i32 0, i32 6
  store i32 %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %19, %7
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @syscon_node_to_regmap(ptr noundef %31) #8
  %33 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %5, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %65, label %35

35:                                               ; preds = %27
  %36 = call ptr @of_device_get_match_data(ptr noundef %4) #8
  %37 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %5, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %38, align 8
  %39 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 1, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, %40
  %44 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 2, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %43, %45
  %47 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 3, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = or i32 %46, %48
  %50 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 4, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %49, %51
  %53 = getelementptr [6 x %struct.region], ptr %36, i32 0, i32 5, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = or i32 %52, %54
  %56 = load ptr, ptr %33, align 4
  %57 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 44, i32 noundef %55, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = load ptr, ptr %33, align 4
  %59 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 384, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  store i32 255, ptr %5, align 4
  %60 = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 1
  store ptr @.str, ptr %60, align 4
  %61 = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 2
  store ptr @aspeed_p2a_ctrl_fops, ptr %61, align 4
  %62 = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 4
  store ptr %4, ptr %62, align 4
  %63 = call i32 @misc_register(ptr noundef nonnull %5) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %35, %27, %16
  %66 = phi ptr [ @.str.3, %16 ], [ @.str.4, %27 ], [ @.str.5, %35 ]
  %67 = phi i32 [ -19, %16 ], [ -19, %27 ], [ %63, %35 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %66) #9
  br label %68

68:                                               ; preds = %65, %35, %1
  %69 = phi i32 [ -12, %1 ], [ 0, %35 ], [ %67, %65 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ctrl_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @misc_deregister(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.aspeed_p2a_ctrl_mapping, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 16, i32 -1090519040) #10
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !9

13:                                               ; preds = %3
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !10
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %9, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !9

21:                                               ; preds = %13, %3
  %22 = phi i32 [ %19, %13 ], [ 16, %3 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %4, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #8
  br label %93

25:                                               ; preds = %13
  switch i32 %1, label %93 [
    i32 1074836224, label %26
    i32 -1072647423, label %79
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %93 [
    i32 0, label %29
    i32 1, label %37
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 3
  call void @mutex_lock(ptr noundef %30) #8
  %31 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  call void @mutex_unlock(ptr noundef %30) #8
  %34 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %6, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %75

37:                                               ; preds = %26
  %38 = load i64, ptr %4, align 8
  %39 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %4, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, -1
  %42 = zext i32 %41 to i64
  %43 = add i64 %38, %42
  %44 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 2
  %45 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 3
  %46 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 1
  br label %47

47:                                               ; preds = %69, %37
  %48 = phi i1 [ false, %37 ], [ %70, %69 ]
  %49 = phi i32 [ 0, %37 ], [ %71, %69 ]
  %50 = load ptr, ptr %44, align 4
  %51 = getelementptr [6 x %struct.region], ptr %50, i32 0, i32 %49, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = icmp ult i64 %52, %38
  br i1 %53, label %69, label %54

54:                                               ; preds = %47
  %55 = getelementptr [6 x %struct.region], ptr %50, i32 0, i32 %49
  %56 = load i64, ptr %55, align 8
  %57 = icmp ugt i64 %56, %43
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  call void @mutex_lock(ptr noundef %45) #8
  %59 = getelementptr %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 5, i32 %49
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  call void @mutex_unlock(ptr noundef %45) #8
  %62 = getelementptr %struct.aspeed_p2a_user, ptr %6, i32 0, i32 3, i32 %49
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = load ptr, ptr %46, align 4
  %66 = getelementptr [6 x %struct.region], ptr %50, i32 0, i32 %49, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 44, i32 noundef %67, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %69

69:                                               ; preds = %58, %47
  %70 = phi i1 [ %48, %47 ], [ true, %58 ]
  %71 = add nuw nsw i32 %49, 1
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %47

73:                                               ; preds = %69, %54
  %74 = phi i1 [ %48, %54 ], [ %70, %69 ]
  br i1 %74, label %75, label %93

75:                                               ; preds = %73, %29
  %76 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 384, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %93

79:                                               ; preds = %25
  %80 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %4, i32 0, i32 2
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, ptr %4, align 8
  %84 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %8, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %4, i32 0, i32 1
  store i32 %85, ptr %86, align 8
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !10
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #8, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %90 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #8, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !12
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 0, i32 -14
  br label %93

93:                                               ; preds = %79, %75, %73, %26, %25, %21
  %94 = phi i32 [ 0, %75 ], [ -22, %73 ], [ -22, %26 ], [ -22, %25 ], [ -14, %21 ], [ %92, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %6, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %16, %17
  %21 = lshr i32 %20, 12
  %22 = add i32 %21, %19
  %23 = lshr i32 %11, 12
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -61
  %29 = lshr i32 %8, 12
  %30 = add i32 %19, %29
  %31 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %17, i32 noundef %30, i32 noundef %20, i32 noundef %28) #8
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -11
  br label %34

34:                                               ; preds = %25, %14, %2
  %35 = phi i32 [ -22, %14 ], [ %33, %25 ], [ -22, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_open(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 36) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store ptr %4, ptr %8, align 8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.aspeed_p2a_user, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %9
  store i32 %13, ptr %11, align 4
  %14 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr %struct.aspeed_p2a_ctrl, ptr %16, i32 0, i32 5, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %15
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr %struct.aspeed_p2a_ctrl, ptr %20, i32 0, i32 5, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %20, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr [6 x %struct.region], ptr %26, i32 0, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %24, %2
  %30 = phi i32 [ %28, %24 ], [ 0, %2 ]
  %31 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.aspeed_p2a_ctrl, ptr %20, i32 0, i32 5, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %32
  store i32 %35, ptr %33, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr %struct.aspeed_p2a_ctrl, ptr %36, i32 0, i32 5, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = xor i1 %23, true
  %42 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %36, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr [6 x %struct.region], ptr %43, i32 0, i32 1, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %45, %30
  br label %47

47:                                               ; preds = %40, %29
  %48 = phi i32 [ %46, %40 ], [ %30, %29 ]
  %49 = phi i1 [ %41, %40 ], [ true, %29 ]
  %50 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.aspeed_p2a_ctrl, ptr %36, i32 0, i32 5, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %53, %51
  store i32 %54, ptr %52, align 4
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr %struct.aspeed_p2a_ctrl, ptr %55, i32 0, i32 5, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %55, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr [6 x %struct.region], ptr %61, i32 0, i32 2, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = or i32 %63, %48
  br label %65

65:                                               ; preds = %59, %47
  %66 = phi i32 [ %64, %59 ], [ %48, %47 ]
  %67 = phi i1 [ %49, %59 ], [ true, %47 ]
  %68 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.aspeed_p2a_ctrl, ptr %55, i32 0, i32 5, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %71, %69
  store i32 %72, ptr %70, align 4
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr %struct.aspeed_p2a_ctrl, ptr %73, i32 0, i32 5, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %73, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr [6 x %struct.region], ptr %79, i32 0, i32 3, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = or i32 %81, %66
  br label %83

83:                                               ; preds = %77, %65
  %84 = phi i32 [ %82, %77 ], [ %66, %65 ]
  %85 = phi i1 [ %67, %77 ], [ true, %65 ]
  %86 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr %struct.aspeed_p2a_ctrl, ptr %73, i32 0, i32 5, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %89, %87
  store i32 %90, ptr %88, align 4
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr %struct.aspeed_p2a_ctrl, ptr %91, i32 0, i32 5, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %91, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr [6 x %struct.region], ptr %97, i32 0, i32 4, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = or i32 %99, %84
  br label %101

101:                                              ; preds = %95, %83
  %102 = phi i32 [ %100, %95 ], [ %84, %83 ]
  %103 = phi i1 [ %85, %95 ], [ true, %83 ]
  %104 = getelementptr %struct.aspeed_p2a_user, ptr %4, i32 0, i32 3, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.aspeed_p2a_ctrl, ptr %91, i32 0, i32 5, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 %107, %105
  store i32 %108, ptr %106, align 4
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr %struct.aspeed_p2a_ctrl, ptr %109, i32 0, i32 5, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %109, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 44, i32 noundef %102, i32 noundef %102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %135

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %109, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr [6 x %struct.region], ptr %119, i32 0, i32 5, i32 2
  %121 = load i32, ptr %120, align 8
  %122 = or i32 %121, %102
  %123 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %109, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 44, i32 noundef %122, i32 noundef %122, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %103, label %135, label %126

126:                                              ; preds = %117
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %127, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %127, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 384, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %135

135:                                              ; preds = %131, %126, %117, %113
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %136, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %137) #8
  tail call void @kfree(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3466460}
!11 = !{i64 3466657}
!12 = !{i64 2150951936}
