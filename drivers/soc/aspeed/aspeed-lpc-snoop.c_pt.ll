; ModuleID = '/llk/IR/drivers/soc/aspeed/aspeed-lpc-snoop.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-lpc-snoop.c"
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
%struct.aspeed_lpc_snoop_model_data = type { i32 }
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
%struct.aspeed_lpc_snoop = type { ptr, i32, ptr, [2 x %struct.aspeed_lpc_snoop_channel] }
%struct.aspeed_lpc_snoop_channel = type { %struct.kfifo, %struct.wait_queue_head, %struct.miscdevice }
%struct.kfifo = type { %union.anon.65, [0 x i8] }
%union.anon.65 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@aspeed_lpc_snoop_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [44 x i8] c"author=Robert Lippert <rlippert@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [67 x i8] c"description=Linux driver to control Aspeed LPC snoop functionality\00", section ".modinfo", align 1
@aspeed_lpc_snoop_driver = internal global %struct.platform_driver { ptr @aspeed_lpc_snoop_probe, ptr @aspeed_lpc_snoop_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_lpc_snoop_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"aspeed-lpc-snoop\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"aspeed,ast2400-lpc-v2\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"aspeed,ast2500-lpc-v2\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"aspeed,ast2600-lpc-v2\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unsupported LPC device binding\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"snoop-ports\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"no snoop ports configured\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"couldn't enable clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@aspeed_lpc_enable_snoop.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"&lpc_snoop->chan[channel].wq\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@snoop_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @snoop_file_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snoop_file_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ast2400_model_data = internal constant %struct.aspeed_lpc_snoop_model_data zeroinitializer, align 4
@ast2500_model_data = internal constant %struct.aspeed_lpc_snoop_model_data { i32 1 }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license224], section "llvm.metadata"

@__mod_of__aspeed_lpc_snoop_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @aspeed_lpc_snoop_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_lpc_snoop_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_lpc_snoop_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 156, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %75, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.2) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.3) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %75

20:                                               ; preds = %16, %13, %6
  %21 = tail call ptr @syscon_node_to_regmap(ptr noundef %10) #6
  store ptr %21, ptr %4, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %75

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %25, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 @of_property_read_u32_index(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull %2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %75

31:                                               ; preds = %24
  %32 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %33 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %4, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = icmp eq ptr %32, inttoptr (i32 -517 to ptr)
  br i1 %36, label %75, label %37

37:                                               ; preds = %35
  %38 = ptrtoint ptr %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  br label %75

39:                                               ; preds = %31
  %40 = call i32 @clk_prepare(ptr noundef %32) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i32 @clk_enable(ptr noundef %32) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  call void @clk_unprepare(ptr noundef %32) #6
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ %43, %45 ], [ %40, %39 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  br label %75

48:                                               ; preds = %42
  %49 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %50 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %4, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %48
  %53 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %49, ptr noundef nonnull @aspeed_lpc_snoop_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %4) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, ptr %50, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %56) #7
  store i32 0, ptr %50, align 4
  br label %72

57:                                               ; preds = %52
  %58 = load i32, ptr %2, align 4
  %59 = trunc i32 %58 to i16
  %60 = call fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef nonnull %4, ptr noundef %3, i32 noundef 0, i16 noundef zeroext %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load ptr, ptr %26, align 8
  %64 = call i32 @of_property_read_u32_index(ptr noundef %63, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = trunc i32 %67 to i16
  %69 = call fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef nonnull %4, ptr noundef %3, i32 noundef 1, i16 noundef zeroext %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  call fastcc void @aspeed_lpc_disable_snoop(ptr noundef nonnull %4, i32 noundef 0)
  br label %72

72:                                               ; preds = %71, %57, %55, %48
  %73 = phi i32 [ %60, %57 ], [ %69, %71 ], [ -19, %48 ], [ %53, %55 ]
  %74 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %74) #6
  call void @clk_unprepare(ptr noundef %74) #6
  br label %75

75:                                               ; preds = %72, %66, %62, %46, %37, %35, %30, %23, %19, %1
  %76 = phi i32 [ -19, %23 ], [ -19, %30 ], [ %47, %46 ], [ %73, %72 ], [ -19, %19 ], [ -12, %1 ], [ %38, %37 ], [ -517, %35 ], [ 0, %66 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 128, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = getelementptr %struct.aspeed_lpc_snoop, ptr %3, i32 0, i32 3, i32 0
  tail call void @__kfifo_free(ptr noundef %6) #6
  %7 = getelementptr %struct.aspeed_lpc_snoop, ptr %3, i32 0, i32 3, i32 0, i32 2
  tail call void @misc_deregister(ptr noundef %7) #6
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 128, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = getelementptr %struct.aspeed_lpc_snoop, ptr %3, i32 0, i32 3, i32 1
  tail call void @__kfifo_free(ptr noundef %10) #6
  %11 = getelementptr %struct.aspeed_lpc_snoop, ptr %3, i32 0, i32 3, i32 1, i32 2
  tail call void @misc_deregister(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %1) #6
  %6 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2
  %7 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull @aspeed_lpc_enable_snoop.__key) #6
  %8 = tail call i32 @__kfifo_alloc(ptr noundef %6, i32 noundef 2048, i32 noundef 1, i32 noundef 3264) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2, i32 2
  store i32 255, ptr %11, align 4
  %12 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef %2) #6
  %13 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2, i32 2, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2, i32 2, i32 2
  store ptr @snoop_fops, ptr %14, align 4
  %15 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %2, i32 2, i32 4
  store ptr %1, ptr %15, align 4
  %16 = tail call i32 @misc_register(ptr noundef %11) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %10
  switch i32 %2, label %36 [
    i32 0, label %20
    i32 1, label %19
  ]

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i32 [ -65536, %19 ], [ 65535, %18 ]
  %22 = phi i32 [ 16, %19 ], [ %2, %18 ]
  %23 = phi i32 [ 32768, %19 ], [ 16384, %18 ]
  %24 = phi i32 [ 12, %19 ], [ 3, %18 ]
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 128, i32 noundef %24, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = load ptr, ptr %0, align 4
  %28 = zext i16 %3 to i32
  %29 = shl nuw i32 %28, %22
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 144, i32 noundef %21, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = load i32, ptr %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %0, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 256, i32 noundef %23, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %36

36:                                               ; preds = %33, %20, %18, %10, %4
  %37 = phi i32 [ %8, %4 ], [ %16, %10 ], [ -22, %18 ], [ 0, %33 ], [ 0, %20 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_lpc_disable_snoop(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %10 [
    i32 0, label %4
    i32 1, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i32 [ 12, %3 ], [ 3, %2 ]
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 128, i32 noundef %5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %1
  tail call void @__kfifo_free(ptr noundef %8) #6
  %9 = getelementptr %struct.aspeed_lpc_snoop, ptr %0, i32 0, i32 3, i32 %1, i32 2
  tail call void @misc_deregister(ptr noundef %9) #6
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %1, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 132, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 3
  store i32 %10, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 4
  %14 = call i32 @regmap_write(ptr noundef %13, i32 noundef 132, i32 noundef %10) #6
  %15 = load ptr, ptr %1, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 148, ptr noundef nonnull %4) #6
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3
  %24 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %23, align 4
  %29 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = icmp ugt i32 %31, %25
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = add i32 %30, 1
  store i32 %34, ptr %29, align 4
  %35 = sub i32 %28, %34
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i32 [ %31, %27 ], [ %35, %33 ]
  %38 = icmp ugt i32 %37, %25
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = and i32 %28, %25
  %43 = getelementptr i8, ptr %41, i32 %42
  store i8 %22, ptr %43, align 1
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !9
  %44 = load i32, ptr %23, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %23, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0, i32 1
  call void @__wake_up(ptr noundef %47, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  %48 = load i32, ptr %3, align 4
  br label %49

49:                                               ; preds = %46, %20, %12
  %50 = phi i32 [ %48, %46 ], [ %17, %20 ], [ %17, %12 ]
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %4, align 4
  %55 = lshr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1
  %58 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %53
  %62 = load i32, ptr %57, align 4
  %63 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %62, %64
  %66 = icmp ugt i32 %65, %59
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = add i32 %64, 1
  store i32 %68, ptr %63, align 4
  %69 = sub i32 %62, %68
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %65, %61 ], [ %69, %67 ]
  %72 = icmp ugt i32 %71, %59
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = and i32 %62, %59
  %77 = getelementptr i8, ptr %75, i32 %76
  store i8 %56, ptr %77, align 1
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !9
  %78 = load i32, ptr %57, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %57, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1, i32 1
  call void @__wake_up(ptr noundef %81, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %82

82:                                               ; preds = %80, %53, %49, %8, %2
  %83 = phi i32 [ 0, %2 ], [ 0, %8 ], [ 1, %49 ], [ 1, %53 ], [ 1, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %83
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snoop_file_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 -28
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #6
  %20 = getelementptr i8, ptr %8, i32 -12
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #6
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %11, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %28, %19
  %26 = phi i32 [ %29, %28 ], [ %21, %19 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  call void @schedule() #6
  %29 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #6
  %30 = load i32, ptr %9, align 4
  %31 = load i32, ptr %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %25, label %33

33:                                               ; preds = %28, %19
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  br label %36

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  %35 = icmp eq i32 %26, -512
  br i1 %35, label %41, label %36

36:                                               ; preds = %34, %33, %4
  %37 = call i32 @__kfifo_to_user(ptr noundef %9, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #6
  %38 = icmp eq i32 %37, 0
  %39 = load i32, ptr %5, align 4
  %40 = select i1 %38, i32 %39, i32 %37
  br label %41

41:                                               ; preds = %36, %34, %14
  %42 = phi i32 [ -11, %14 ], [ -4, %34 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snoop_file_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #6
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr i8, ptr %4, i32 -32
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %4, i32 -28
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %15, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2153110937}
